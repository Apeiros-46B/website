return Component.new('Article', function(_, _, args, _)
	GlobalStyles {
		Rule '.article-header' {
			padding_bottom = rem(1.2),
			border_bottom = { px(2), solid, var 'sep' },
		},
		Rule '.article-meta' {
			margin_top = rem(0.5),
			margin_bottom = rem(1),
			font_size = pct(90),
			color = var 'fg2',
		},
		Rule '.article-tags' {
			display = flex,
			flex_wrap = wrap,
			gap = rem(0.5),

			Rule '& > li' {
				padding = { px(2), px(8) },
				font_size = pct(80),
				font_weight = bold,
				background_color = var 'bg4',
			}
		},
	}

	return Provide {
		nav_active = 'blog',
		Page {
			title = args.title,
			description = args.description,
			head = args.head,
			opengraph = args.opengraph,

			left_sidebar = args.toc,
			content = {
				class = 'article-layout',

				header {
					class = 'article-header',
					h1 { args.title },
					p {
						class = 'article-meta',
						strong(args.description), br(),
						'Posted on ', args.date,
					},

					If (args.tags) {
						ul {
							class = 'article-tags',
							For (args.tags) (function(tag)
								return li { tag }
							end)
						}
					},
				},

				args.content,
			}
		},
	}
end)
