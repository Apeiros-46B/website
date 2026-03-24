-- TODO: make content a function that takes sidebars as args somehow?
-- that way we can gracefully show a fallback inline (location determined by the instantiator) instead of hiding the sidebars entirely
-- e.g. a blog ToC at the start AFTER the heading, which is hard to capture using pure DSL logic
local width_rem = 100;
local width_thresh_rem = width_rem - 5;

return Component.new('Page', function(_, _, args, _)
	GlobalStyles {
		Rule 'body' {
			overflow = hidden,
			height = pct(100),
		},

		Rule 'main' {
			width = pct(100),
			max_width = rem(width_rem),
			margin = { 0, auto },
			height = 'calc(100vh - 1rem)',
			display = grid,

			column_gap = rem(1),

			-- row 1 size depends on Navbar
			-- row 2 expands to all remaining space
			grid_template_rows = 'auto minmax(0, 1fr)',

			-- 1 col by default
			grid_template_columns = 'minmax(0, 50rem)',
			justify_content = center,
		},

		-- 3 cols if wide enough
		Query '@media' { min_width = rem(width_thresh_rem) } {
			Rule 'main' {
				grid_template_columns = '14rem minmax(0, 50rem) 14rem',
			}
		},

		Rule 'main > header#navbar-header' {
			grid_row = 1,
			grid_column = 1,
		},
		Query '@media' { min_width = rem(width_thresh_rem) } {
			Rule 'main > header#navbar-header' {
				grid_column = 2,
			}
		},

		Rule '#content-outer' {
			grid_row = 2,
			grid_column = 1,
			display = flex,
			flex_direction = column,
			overflow_y = auto,
			padding = { 0, rem(1), rem(1), rem(1) },

			background_color = var 'bg3',
		},
		Query '@media' { min_width = rem(width_thresh_rem) } {
			Rule '#content-outer' {
				grid_column = 2,
			}
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
		Query '@media' { min_width = rem(width_thresh_rem) } {
			Rule '.sidebar' {
				display = block,
			}
		},

		Rule '.sidebar-card' {
			padding = rem(1),
			background_color = var 'bg3',
		},

		Rule ':where(#content, section) > :nth-last-child(n+2)' {
			margin_bottom = rem(1),
		},
		Rule 'footer' {
			display = grid,
			justify_content = center,
			padding_top = rem(1),
			color = var 'fg2',
		},
	}

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
				Navbar, -- header#navbar-header

				div {
					id = 'left-sidebar',
					class = 'sidebar',
					If (args.left_sidebar) {
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
							li {
								a { href = 'https://github.com/Apeiros-46B/www', 'src' },
							},
							li {
								'powered by ',
								a { href = 'https://github.com/Apeiros-46B/lwk', 'lwk' },
							},
						},
					},
				},

				div {
					id = 'right-sidebar',
					class = 'sidebar',
					If (args.right_sidebar) {
						div { class = 'sidebar-card', args.right_sidebar }
					}
				}
			},
		},
	}
end)
