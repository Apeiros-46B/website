-- wrap TagList, auto-discover blog tags and link to their dedicated pages.
-- if args is a number N, renders top N tags with counts shown

return Component.new('ArticleTagList', function(_, _, args, ctx)
	if not args then return nil end

	local tag_slugs = ctx and ctx.manifest.groups.blog.tag_slugs or {}
	local tag_names = ctx and ctx.manifest.groups.blog.tag_names or {}
	local out = {}

	if type(args) == 'number' then
		-- show top tags
		for i = 1, math.min(args, #ctx.manifest.groups.blog.tags) do
			local entry = ctx.manifest.groups.blog.tags[i]
			local slug = entry.slug
			local display = tag_names[slug] or slug
			out[#out+1] = {
				name = display,
				href = '/blog/tags/' .. slug,
				count = entry.count,
			}
		end
	else
		-- show given tags
		for _, tag in ipairs(args) do
			local slug = tag_slugs[tag]
			if slug then
				local display = tag_names[slug] or tag
				out[#out+1] = {
					name = display,
					href = '/blog/tags/' .. slug,
				}
			else
				out[#out+1] = tag
			end
		end
	end

	return TagList(out)
end)
