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
	Rule '.article-header' {
		padding_bottom = rem(0.2),
	},
	Rule '.article-description' {
		margin_top = rem(0.5),
		margin_bottom = 0,
	},
	Rule '.article-meta' {
		margin_bottom = rem(1),
		font_size = pct(90),
		color = var 'fg_dim',
	},

	-- TODO: make the table of contents header look like a "tab"
	-- that says "table of contents" above the thing. maybe it's
	-- not worth the effort, idk we can do it later it doesn't
	-- affect content or router refactoring at all
	Rule '.article-toc-header' {
		margin_bottom = rem(0.5),
		font_size = pct(110),
	},
	-- don't show inline toc if wide enough
	Query '@media' { min_width = rem(layout.page_width_thresh_rem) } {
		Rule '.article-toc-inline' {
			display = none,
		}
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

return Component.new('Article', function(_, _, args, _)
	-- {{{ create table of contents
	local toc_tree = generate_toc(args.content)

	local toc = nil
	local toc_sidebar = nil
	local toc_inline = nil

	if #toc_tree > 0 then
		toc = LinkTree(toc_tree)

		local toc_base = nav {
			aria_label = 'table of contents',
			h2 {
				class = 'article-toc-header',
				'table of contents',
			},
		}

		toc_sidebar = toc_base(toc)
		toc_inline = toc_base {
			-- TODO: way to merge components (`merge(toc_base, Card)`, Card wins)
			class = 'card article-toc-inline',
			details {
				summary 'Click to expand',
				toc,
			},
		}
	end
	-- }}}

	return Provide {
		nav_active = 'blog',

		Page {
			title = args.title,
			description = args.description,
			head = args.head,
			opengraph = args.opengraph,

			left_sidebar = toc_sidebar,

			content = article {
				header {
					class = 'article-header',
					h1 { args.title },
					p {
						class = 'article-description',
						args.description,
					},
					p {
						class = 'article-meta',
						args.date,
					},
					TagList(
						args.tags,
						function(tag)
							return '/blog/tags/' .. tag:lower() .. '.html'
						end
					),
				},

				If (toc_inline) { toc_inline },

				hr,

				args.content,
			},
		},
	}
end)
