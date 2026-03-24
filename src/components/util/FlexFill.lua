local class = 'flex-fill'

GlobalStyles {
	Rule ('.' .. class) {
		flex_grow = 1,
	},
}

return div { class = class }
