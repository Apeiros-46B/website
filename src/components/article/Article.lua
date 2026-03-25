local layout = require('src.data.layout')

-- tags to skip for table of contents generation
local skip_tags = {
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
	Rule '.article-meta' {
		margin_top = rem(0.5),
		margin_bottom = rem(1),
		font_size = pct(90),
		color = var 'fg_dim',
	},
	Rule '.article-tags' {
		display = flex,
		flex_wrap = wrap,
		gap = rem(0.5),

		Rule '& > li' {
			padding = { px(2), px(8) },
			font_size = pct(80),
			font_weight = bold,
			background_color = var 'bg_raised',
		}
	},

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

local function extract_toc(content)
	local toc = {}
	local stack = {}

	local function visit(node)
		if type(node) ~= 'table' then return end

		local tag = node.tag

		if type(tag) == 'string' and skip_tags[tag] then
			return
		end

		if type(tag) == 'string' and tag:match('^h[1-6]$') then
			local level = tonumber(tag:sub(2))

			local id = node.props.id
			local title = node.children[1]

			if not id then return end -- skip unanchored headings

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
		else
			for _, child in ipairs(node) do
				visit(child)
			end
		end
	end

	for _, node in ipairs(content) do
		visit(node)
	end

	return toc
end

return Component.new('Article', function(_, _, args, _)
	local toc_tree = extract_toc(args.content)
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
						class = 'article-meta',
						strong(args.description), br,
						'Posted on ', args.date,
					},

					If (args.tags) {
						ul {
							class = 'article-tags',
							For (args.tags) (li),
						}
					},
				},

				toc_inline,

				hr,

				args.content,
			},
		},
	}
end)
