GlobalStyles {
	Rule '.sidenote' {
		width = fit_content,
		max_width = pct(100),
		padding = rem(1),
		font_size = pct(90),
		color = var 'fg2',
		background_color = var 'bg2',
		border_left = { var 'ornament_thickness', solid, var 'sep' },
	}
}

return aside {
	class = 'sidenote',
	role = 'note',
}
