local names = {
	info = 'Info',
	warn = 'Warning',
	danger = 'Danger',
}

GlobalStyles {
	Rule '.callout' {
		font_size = pct(90),
		color = var 'fg_dim',

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
		class = 'card callout callout-' .. args.level,
		role = 'note',
		If (args.title) {
			Set('aria_label', args.title),
		} {
			Set('aria_label', level_name),
		},

		div {
			class = 'callout-title',
			aria_hidden = true, -- prevent reading the title twice

			If (args.title) { args.title } { level_name },
		},

		args.content,
	}
end)
