local articles = {
	{
		date = '2026-03-25',
		title = 'Test',
		slug = 'test.html',
		tags = { 'lua', 'ssg' },
	},
}

GlobalStyles {
	Rule '.blog-posts' {
		list_style = none,
		padding_left = 0,
		display = flex,
		flex_direction = column,
		gap = rem(2.5), -- Spacing between entire articles
	},
	Rule '.blog-posts article' {
		display = flex,
		align_items = start,
		gap = rem(1.5),
	},
	Rule '.post-content' {
		display = flex,
		flex_direction = column,
		gap = rem(0.5),
		flex_grow = 1,
	},
	Rule '.post-header' {
		display = flex,
		align_items = baseline,
		gap = rem(1),
	},
	Rule '.post-title' {
		margin = 0,
		font_size = rem(1.2),
		line_height = 1.2,
	},
	Rule '.post-title a' {
		text_decoration = none,
		color = var 'fg1',

		Rule '&:hover' {
			text_decoration = underline,
		}
	},
	Rule '.post-date' {
		color = var 'fg_dim',
		font_size = pct(90),
		white_space = nowrap,
	},
}

return Page {
	title = "apeiros.xyz - blog",
	description = '',
	head = {},
	content = {
		h1 'blog',
		ol {
			class = 'blog-posts',
			For (articles) (function (data)
				return article {
					class = 'post-content',
					header {
						class = 'post-header',
						h2 {
							class = 'post-title',
							a { href = '/blog/' .. data.slug, data.title }
						},
						time {
							class = 'post-date',
							datetime = data.date,
							data.date
						},
					},

					If (data.tags) {
						TagList(data.tags)
					}
				}
			end),
		},
	},
}
