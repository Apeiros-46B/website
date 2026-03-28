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
		HideScrollbar,
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

	Rule ':where(#content, section, article, details) > :nth-last-child(n+2):not(summary)' {
		margin_bottom = rem(1),
	},
	Rule 'footer' {
		display = grid,
		justify_content = center,
		padding_top = rem(1),
		color = var 'fg_dim',
	},
}

return Component.new('Page', function(_, _, args, _)
	local layout_class = nil
	if args.left_sidebar or args.right_sidebar then
		layout_class = 'has-sidebar'
	end

	return Document {
		lang = 'en',
		head {
			meta { charset = 'UTF-8' },
			meta {
				name = 'viewport',
				content = 'width=device-width, initial-scale=1',
			},
			meta { name = 'description', content = args.description },
			title { args.title },

			meta { name = 'og:title', content = args.title },
			If (type(args.opengraph) == 'table') {
				For (args.opengraph) (function(v, k)
					return meta { name = 'og:' .. k, content = v }
				end)
			},

			link {
				rel = 'icon',
				type = 'image/x-icon',
				href = '/assets/favicon.svg',
			},
			LinkGlobalStyles,
			args.head,
		},
		body {
			main {
				class = layout_class,

				Navbar, -- header#navbar-header

				If (args.left_sidebar) {
					div {
						id = 'left-sidebar',
						class = 'sidebar',
						div { class = 'sidebar-card', args.left_sidebar }
					}
				},

				div {
					id = 'content-outer',
					div { id = 'content', args.content },
					FlexFill,
					footer {
						HorizList {
							li { '© Apeiros ' .. os.date('%Y') },
							If (not args.about_shown) {
								li {
									a { href = '/about.html', 'about' },
								},
							}
						},
					},
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
