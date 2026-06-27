local util = require('ssg.util')
local layout = require('src.data.layout')

local wide_grid_template = ('%drem minmax(0, %drem) %drem'):format(
	layout.page_sidebar_width_rem,
	layout.page_content_width_rem,
	layout.page_sidebar_width_rem
)
local narrow_grid_template = ('minmax(0, %drem)'):format(
	layout.page_content_width_rem
)

GlobalStyles {
	Rule 'body' {
		overflow = hidden,
		height = pct(100),
	},

	Rule 'main' {
		width = pct(100),
		max_width = rem(layout.page_width_rem),
		margin = { 0, auto },
		height = 'calc(100vh - 1rem)',
		display = grid,

		column_gap = rem(1),

		-- row 1 size depends on Navbar
		-- row 2 expands to all remaining space
		grid_template_rows = 'auto minmax(0, 1fr)',

		-- 1 col by default
		grid_template_columns = narrow_grid_template,
		justify_content = center,
	},

	-- 3 cols if wide enough and sidebars exist
	Query '@media' { min_width = rem(layout.page_width_rem) } {
		Rule 'main.has-sidebar' {
			grid_template_columns = wide_grid_template,
		},
		Rule 'main.has-sidebar > header#navbar-header, main.has-sidebar > #content-outer' {
			grid_column = 2,
		},
	},

	Rule 'main > header#navbar-header' {
		grid_row = 1,
		grid_column = 1,
	},

	Rule '#content-outer' {
		grid_row = 2,
		grid_column = 1,
		display = flex,
		flex_direction = column,
		overflow_y = auto,
		padding = { 0, rem(1), rem(1), rem(1) },

		background_color = var 'bg_main',
	},

	-- sidebars hidden by default
	Rule '.sidebar' {
		display = none,
		grid_row = 2,
		overflow_y = auto,
		margin_top = rem(-1),
	},
	Rule '#left-sidebar' { grid_column = 1 },
	Rule '#right-sidebar' { grid_column = 3 },

	-- sidebars shown if wide enough
	Query '@media' { min_width = rem(layout.page_width_rem) } {
		Rule '.sidebar' {
			display = block,
		}
	},

	Rule '.sidebar-card' {
		padding = rem(1),
		background_color = var 'bg_main',
	},

	Rule ':where(#content, section, article, details) > :not(:last-child):not(summary)' {
		margin_bottom = rem(1),
	},
	Rule 'footer' {
		display = grid,
		justify_content = center,
		padding_top = rem(1),
		color = var 'fg_dim',
	},
}

local function flatten_opengraph_keys(src, dst, ns)
	if not src then return end
	ns = ns or 'og:'

	for _, entry in ipairs(src) do
		if type(entry[2]) == 'table' then
			flatten_opengraph_keys(entry[2], dst, ns .. entry[1] .. ':')
		else
			dst[#dst+1] = { property = ns .. entry[1], content = entry[2] }
		end
	end
end

return Component.new('Page', function(_, _, args, ctx)
	local layout_class = nil
	if args.left_sidebar or args.right_sidebar then
		layout_class = 'has-sidebar'
	end

	local title_str = args.title
	if not title_str:match('[Aa]peiros') then
		title_str = title_str .. ' - Apeiros'
	end
	title_str = title_str:gsub('^%l', string.upper)

	if #title_str > 55 then
		util.log('title="' .. title_str .. '" exceeds 55 chars', 'warn', 'Page')
	end

	local desc_str = args.desc
		:gsub('[%s\r\n]+', ' ') -- collapse whitespaces into single space
		:gsub('^%s*(.-)%s*$', '%1') -- trim

	if #desc_str > 120 then
		util.log('desc="' .. desc_str .. '" exceeds 120 chars', 'warn', 'Page')
	end

	local og = {
		{ 'site_name', 'apeiros.xyz' },
		{ 'url', 'https://apeiros.xyz' .. ctx.page.url },
		{ 'title', title_str },
		{ 'description', desc_str },
	}
	if args.opengraph then
		for _, entry in ipairs(args.opengraph) do
			og[#og+1] = entry
		end
	end

	local og_props = {}
	flatten_opengraph_keys(og, og_props)

	return Document {
		lang = 'en',
		head {
			meta { charset = 'UTF-8' },
			meta {
				name = 'viewport',
				content = 'width=device-width, initial-scale=1',
			},
			title(title_str),

			meta { name = 'author', content = 'Apeiros' },
			meta { name = 'generator', content = 'lwk' },
			meta { name = 'description', content = desc_str },
			For (og_props) (meta),

			link {
				rel = 'icon',
				type = 'image/svg+xml',
				href = '/assets/favicon.svg',
			},
			LinkGlobalStyles,
			-- TODO: reenable analytics
			-- script {
			-- 	defer = true,
			-- 	data_domain = 'apeiros.xyz',
			-- 	data_api = 'https://plausible.apeiros.xyz/main',
			-- 	src = 'https://plausible.apeiros.xyz/assets/main.js'
			-- },

			args.head,
		},
		body {
			main {
				class = layout_class,

				Navbar, -- header#navbar-header

				div {
					id = 'content-outer',
					div { id = 'content', args.content },
					FlexFill,
					footer {
						HorizList {
							li { '© Apeiros ' .. os.date('%Y') },
							If (args.title ~= 'colophon') {
								li {
									a { href = '/colophon', 'colophon' },
								},
							}
						},
					},
				},

				-- sidebars may contain headings, h1 is probably in args.content so for it to
				-- come first, the sidebars need to come afterwards
				If (args.left_sidebar) {
					div {
						id = 'left-sidebar',
						class = 'sidebar',
						div { class = 'sidebar-card', args.left_sidebar }
					}
				},

				If (args.right_sidebar) {
					div {
						id = 'right-sidebar',
						class = 'sidebar',
						div { class = 'sidebar-card', args.right_sidebar }
					}
				}
			},
		},
	}
end)
