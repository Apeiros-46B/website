GlobalStyles {
	Rule '.header-link' {
		margin_left = rem(0.4),
		text_decoration = none,
		color = var 'fg_dim',
	}
}

return function(title, el)
	el = el or h2
	local id = title
		:lower()
		:gsub('[%s]+', '-') -- convert whitespace to separators
		:gsub('[^%.%-%w]', '') -- remove non-alphanumeric or non-separator chars
		:gsub('^(%d)', '-%1') -- prepend hyphen if first char is digit

	return el {
		id = id,
		title,
		a {
			class = 'header-link',
			href = '#' .. id,
			'#',
		},
	}
end
