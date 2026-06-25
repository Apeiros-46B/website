-- wrap TagList, auto-discover blog tags and link to their dedicated pages

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

	return TagList(out)
end)
