local class = 'inset-list'

GlobalStyles {
	Rule ('ul.' .. class) {
		margin_left = rem(1),
		margin_right = rem(1),
		font_size = pct(90),

		Rule '&> :nth-last-child(n+2)' {
			margin_bottom = rem(0.5),
		},
	},
}

return ul { class = class }
