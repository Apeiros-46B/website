local class = 'inline-code'

GlobalStyles {
	Rule ('.' .. class) {
		display = inline,
	},
}

return Component.new('InlineCode', function(_, _, args, _)
	return pre {
		class = class,
		code(args),
	}
end)
