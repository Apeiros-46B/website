GlobalStyles {
	Rule '.header-link' {
		margin_left = rem(0.4),
		text_decoration = none,

		Rule '&:hover' {
			text_decoration = underline,
		},
	},
}

return function(title, Hdr)
	Hdr = Hdr or h2

	local id = title
		:lower()
		:gsub('[%s]+', '-') -- convert whitespace to separators
		:gsub('[^%.%-%w]', '') -- remove non-alphanumeric or non-separator chars
		:gsub('^(%d)', '-%1') -- prepend hyphen if first char is digit

	local hdr_id = id .. '-header'

	return section {
		id = id,
		aria_labelledby = hdr_id,
		Hdr {
			id = hdr_id,
			title,
			a {
				class = 'header-link',
				href = '#' .. id,
				'#',
			},
		},
	}
end
