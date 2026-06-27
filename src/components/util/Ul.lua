GlobalStyles {
	Rule 'ul.list' {
		list_style_type = disc,
		padding_left = rem(1.0),

		Rule '&> li:not(:last-child)' {
			margin_bottom = rem(0.5),
		},
	}
}

return ul { class = 'list' }
