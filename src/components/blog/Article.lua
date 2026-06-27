local layout = require('src.data.layout')

-- tags to skip for table of contents generation
local skip_tags = {
	-- pre is the most important, we don't want to walk thousands of syntax spans
	-- because there shouldn't be headers inside them anyway
	pre = true,
	code = true,
	p = true,
	ul = true,
	ol = true,
	table = true,
	img = true,
}

GlobalStyles {
	Rule '.article-header > :not(:first-child)' {
		margin_top = rem(0.5),
		margin_bottom = 0,
	},
	Rule '.article-nav' {
		display = flex,
		justify_content = space_between,
		margin_top = rem(1),
		margin_bottom = rem(1),

		Rule '& .article-nav-next' {
			margin_left = auto,
		}
	},

	-- TODO: make the sidebar header look like "tabs" that show the title above the
	-- card. maybe it's not worth the effort, idk we can do it later it doesn't affect
	-- content at all so it's low priority
	Rule '.article-toc-header, .article-series-header' {
		margin_bottom = rem(0.5),
		font_size = pct(110),
	},

	-- don't show inline toc if wide enough
	Query '@media' { min_width = rem(layout.page_width_rem) } {
		Rule '.article-toc-inline' {
			display = none,
		},
		Rule '.article-series-inline' {
			display = none,
		},
	},
}

-- {{{ generate a table of contents from the given node
local function generate_toc(content)
	local toc = {}
	local stack = {}

	local function visit(node)
		if type(node) ~= 'table' then return end

		local tag = node.tag

		if type(tag) == 'string' and skip_tags[tag] then
			return
		end

		if tag == 'section' then
			local first_child = node.children and node.children[1]

			if type(first_child) == 'table' and type(first_child.tag) == 'string' and first_child.tag:match('^h[1-6]$') then
				local level = tonumber(first_child.tag:sub(2))

				-- prefer section ID, fallback to header
				local id = node.props.id or first_child.props.id
				local title = first_child.children[1]

				if id then
					local item = {
						href = '#' .. id,
						title = title,
						children = {},
					}

					-- pop stack until parent heading is found
					while #stack > 0 and stack[#stack].level >= level do
						stack[#stack] = nil
					end

					if #stack == 0 then
						toc[#toc+1] = item
					else
						local t = stack[#stack].item.children
						t[#t+1] = item
					end

					stack[#stack+1] = { level = level, item = item }
				end
			end
		end

		-- handle nested sections
		if node.children then
			for _, child in ipairs(node.children) do
				visit(child)
			end
		end
	end

	for _, node in ipairs(content) do
		visit(node)
	end

	return toc
end
-- }}}

return Component.new('Article', function(_, _, args, ctx)
	-- {{{ create table of contents
	local toc_tree = generate_toc(args)

	local toc = nil
	local toc_sidebar = nil
	local toc_inline = nil

	if #toc_tree > 0 then
		toc = LinkTree(toc_tree)

		local toc_base = nav {
			aria_label = 'Table of contents',
			h2 {
				class = 'article-toc-header',
				'Table of contents',
			},
		}

		toc_sidebar = toc_base(toc)
		toc_inline = toc_base {
			class = 'card article-toc-inline',
			details {
				summary 'Click to expand',
				toc,
			},
		}
	end
	-- }}}

	-- {{{ create series navigation
	local series_sidebar = nil
	local series_inline = nil

	if ctx.page.meta.series then
		local series_pages = ctx.manifest.groups.blog.series[ctx.page.meta.series]

		if series_pages and #series_pages > 0 then
			local series_tree = {}
			for _, page in ipairs(series_pages) do
				series_tree[#series_tree+1] = {
					href = page.url,
					title = page.meta.title,
					active = ctx.page.url == page.url,
				}
			end
			local series = LinkTree(series_tree)

			local series_base = nav {
				aria_label = 'Article series',
				h2 {
					class = 'article-series-header',
					ctx.page.meta.series,
				},
			}

			series_sidebar = series_base(series)
			series_inline = series_base {
				class = 'card article-series-inline',
				details {
					summary 'Click to expand',
					series,
				},
			}
		end
	end
	-- }}}

	-- {{{ create next/prev navigation
	local prev = ctx.page.meta.prev
	local next = ctx.page.meta.next
	local article_nav = If (next or prev) (nav {
		class = 'article-nav',
		aria_label = 'Previous/next article by publish date',

		If (prev) (function()
			return span {
				class = 'article-nav-prev',
				aria_label = 'Previous article (older)',
				span { aria_hidden = true, '← ' },
				a { href = prev.url, prev.meta.title },
			}
		end),

		If (next) (function()
			return span {
				class = 'article-nav-next',
				aria_label = 'Next article (newer)',
				a { href = next.url, next.meta.title },
				span { aria_hidden = true, ' →' },
			}
		end),
	})
	-- }}}

	-- create opengraph tags
	local og_article = {
		{ 'published_time', ctx.page.meta.date },
		{ 'modified_time', ctx.page.meta.updated_date or ctx.page.meta.date },
	}
	if ctx.page.meta.tags then
		for _, tag in ipairs(ctx.page.meta.tags) do
			og_article[#og_article+1] = { 'tag', tag }
		end
	end

	return Provide {
		nav_active = '/blog',

		Page {
			title = ctx.page.meta.title,
			desc = ctx.page.meta.desc,
			opengraph = {
				{ 'type', 'article' },
				{ 'article', og_article },
			},

			left_sidebar = toc_sidebar,
			right_sidebar = series_sidebar,

			content = article {
				header {
					class = 'article-header',
					h1(ctx.page.meta.title),
					p(ctx.page.meta.desc),
					p {
						class = 'article-timestamp',
						Date(ctx.page.meta.date),
					},
					ArticleTagList(ctx.page.meta.tags),
				},

				If (toc_inline) { toc_inline },
				If (series_inline) { series_inline },

				article_nav,

				hr,
				args,

				If (next or prev) {
					hr,
				},
				article_nav,
			},
		},
	}
end)
