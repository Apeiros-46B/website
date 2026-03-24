local names = {
	info = 'Info',
	warn = 'Warning',
	danger = 'Danger',
}

GlobalStyles {
	Rule '.callout' {
		width = fit_content,
		max_width = pct(100),
		padding = rem(1),
		font_size = pct(90),
		color = var 'fg2',
		background_color = var 'bg2',
		border_left = { var 'ornament_thickness', solid, var 'accent_color' },

		Vars '&.callout-info' {
			accent_color = var 'aqua',
		},
		Vars '&.callout-warn' {
			accent_color = var 'yellow',
		},
		Vars '&.callout-danger' {
			accent_color = var 'red',
		},

		Rule '&> .callout-title' {
			font_weight = bold,
			color = var 'accent_color',
		}
	}
}

return Component.new('Callout', function(_, _, args, _)
	local level_name = names[args.level]

	return aside {
		class = 'callout callout-' .. args.level,
		role = 'note',
		aria_label = level_name,

		div {
			class = 'callout-title',
			aria_hidden = true, -- prevent reading the title twice

			level_name,
		},

		args.content,
	}
end)
