local names = {
	info = 'Info',
	warn = 'Warning',
	danger = 'Danger',
}

GlobalStyles {
	Vars '.card.callout' {
		card_ornament_color = var 'callout_accent_color',
	},
	Rule '.callout' {
		font_size = pct(90),
		color = var 'fg_dim',

		Vars '&.callout-info' {
			callout_accent_color = var 'aqua',
		},
		Vars '&.callout-warn' {
			callout_accent_color = var 'yellow',
		},
		Vars '&.callout-danger' {
			callout_accent_color = var 'red',
		},

		Rule '&> .callout-title' {
			margin_bottom = rem(0.5),
			font_weight = bold,
			color = var 'callout_accent_color',
		},
	},
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
