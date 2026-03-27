-- takes a list of tag declarations
-- each tag should have
-- name: the name of the tag
-- href: the url to navigate to upon being clicked (nil for no link)

GlobalStyles {
	Rule '.tag-list' {
		display = flex,
		flex_wrap = wrap,
		gap = rem(0.5),

		Rule '& li' {
			padding = { px(2), px(8) },
			font_size = pct(80),
			font_weight = bold,
			background_color = var 'bg_raised',
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
