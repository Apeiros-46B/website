GlobalStyles {
	Rule 'ul.horiz-list' {
		font_size = pct(90),
		list_style_type = none,
		margin_left = 0,
		display = flex,
		flex_wrap = wrap,
		gap = rem(0.2),

		Rule '&> li' {
			line_height = pct(100),
			margin_right = rem(0.1),
		},
		Rule '&> li:nth-last-child(n+2)::after' {
			content = Quoted ' ·',
		},
	},
}

return ul { class = 'horiz-list' }
