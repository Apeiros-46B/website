-- takes a list of tag declarations
-- each tag either be a string or a table with
-- name: the name of the tag
-- href: the url to navigate to upon being clicked

GlobalStyles {
	Rule '.tag-list' {
		display = flex,
		flex_wrap = wrap,
		gap = rem(0.5),

		Rule '& li' {
			padding = { px(1), px(7) },
			font_size = pct(70),
			font_weight = bold,
			background_color = var 'bg_raised',
		},

		Rule '& a' {
			text_decoration = none,

			Rule '&:hover' {
				text_decoration = underline,
			}
		},
	},
}

return function(tags)
	if not tags then return nil end

	return ul {
		class = 'tag-list',
		For (tags) (function(tag)
			if type(tag) == 'string' then
				return li(tag)
			elseif tag.href then
				return li(a {
					href = tag.href,
					tag.name,
				})
			end
		end)
	}
end
