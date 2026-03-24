GlobalStyles {
	Rule 'hide-scrollbar' {
		scrollbar_width = none,
		_ms_overflow_style = none,

		Rule '&::-webkit-scrollbar' {
			display = none,
		}
	},
}

return Append('class', 'hide-scrollbar')
