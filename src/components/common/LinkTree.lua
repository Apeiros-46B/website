-- takes a list of tree nodes
-- each tree node should have:
-- href: passed to <a> as attr
-- title: passed to <a> as content
-- children: table of children

GlobalStyles {
	Rule '.link-tree-item > a' {
		text_decoration = none,
	},

	Rule '.link-tree-inner' {
		margin_left = rem(1),
	},
}

local build_subtree -- forward decl for mutual rec

local function build_children(tree, res)
	for _, node in ipairs(tree) do
		local children = nil
		if node.children then
			children = build_subtree(node.children)
		end
		res[#res+1] = li {
			class = 'link-tree-item',
			a {
				href = node.href,
				node.title,
			},
			children,
		}
	end
end

build_subtree = function(tree, toplevel)
	local class = toplevel and 'link-tree' or 'link-tree-inner'
	local res = {}
	build_children(tree, res)
	return ul {
		class = class,
		res,
	}
end

return function(tree)
	return build_subtree(tree, true)
end
