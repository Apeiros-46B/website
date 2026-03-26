-- css vars: card_ornament_color

-- low priority so users can alter the border color
GlobalStyles {
	Vars '.card' {
		card_ornament_color = var 'fg_sep',
	},
	Rule '.card' {
		width = fit_content,
		max_width = pct(100),
		padding = rem(1),
		background_color = var 'bg_raised',
		border_left = {
			var 'ornament_thickness',
			solid,
			var 'card_ornament_color',
		},
	},
}
