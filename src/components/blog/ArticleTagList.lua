-- wrap TagList, auto-discover blog tags and link to their dedicated pages

GlobalStyles {
	Rule '.tag-list.article-tag-list a' {
		text_decoration = none,
		color = var 'fg_accent',
	},
	Rule '.tag-list.article-tag-list a:hover' {
		text_decoration = underline,
	},
}

return Component.new('ArticleTagList', function(_, _, args, ctx)
	if not args then return nil end

	local has_page = ctx and ctx.manifest.groups.blog.tag_pages or {}

	local out = {}
	for _, tag in ipairs(args) do
		if type(tag) == 'string' and has_page[tag] then
			out[#out+1] = { name = tag, href = '/blog/tags/' .. tag }
		else
			out[#out+1] = tag
		end
	end

	return TagList(out) {
		Append('class', 'article-tag-list'),
	}
end)
