GlobalStyles {
	Rule '.blog-posts' {
		display = flex,
		flex_direction = column,
		gap = rem(1),
		padding_left = 0,
		list_style = none,
	},

	Rule '.post-content' {
		display = flex,
		flex_wrap = wrap,
		align_items = baseline,
		row_gap = rem(0.50),
		column_gap = rem(0.25),

		Rule '&> p' {
			flex_basis = pct(100),
			margin = 0,
		},
		Rule '&> :not(:first-child)' {
			margin_top = rem(0),
		},
		Rule '&> :not(:last-child)' {
			margin_bottom = 0,
		},
	},

	Rule '.post-header' {
		display = flex,
		align_items = baseline,
		gap = rem(0.5),
	},
	Rule '.post-title' {
		margin = 0,
		line_height = 1.2,
		font_size = rem(1.2),
	},
	Rule '.post-title a:hover' {
		text_decoration = underline,
	},
	Rule '.post-date' {
		white_space = nowrap,
		font_size = pct(90),
		color = var 'fg_dim',
	},

	Rule '.post-sep' {
		flex_grow = 1,
		align_self = center,
		height = 0,
		margin = { 0, rem(0.5) },
		border_bottom = { px(2), 'solid', var 'fg_sep' },
	},

	Rule '.post-content .tag-list' {
		margin_left = auto,
	},

	Query '@media' { max_width = rem(45) } {
		Rule '.post-content .tag-list' {
			flex_basis = pct(100),
			margin_left = 0,
		},
		Rule '.post-sep' {
			display = none,
		},
	},
}

return function(pages)
	return ol {
		class = 'blog-posts',
		If (#pages == 0) {
			p 'No articles yet.',
		},
		For (pages) (function(page)
			return article {
				class = 'post-content',
				header {
					class = 'post-header',
					h2 {
						class = 'post-title',
						a { href = page.url, page.meta.title },
					},
					Date(page.meta.date) { class = 'post-date' },
				},
				If (page.meta.tags) (div { class = 'post-sep' }),
				If (page.meta.tags) (ArticleTagList(page.meta.tags)),
				p(page.meta.description),
			}
		end),
	}
end
