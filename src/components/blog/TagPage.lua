-- displays all blog articles tagged with the tag extracted from the page path

return function(ctx)
	local slug = ctx.page.rel_path:match('^blog/tags/(.+)%.html%.lua$')
	if not slug then return nil end

	local tag_names = ctx.manifest.groups.blog.tag_names or {}
	local tag_slugs = ctx.manifest.groups.blog.tag_slugs or {}
	local display_name = tag_names[slug] or slug

	local posts = {}
	for _, page in ipairs(ctx.manifest.groups.blog.chrono) do
		if page.meta.tags then
			for _, tag in ipairs(page.meta.tags) do
				if tag_slugs[tag] == slug then
					posts[#posts+1] = page
					break
				end
			end
		end
	end

	local title = 'articles about ' .. display_name
	local desc
	if display_name == 'opinion' then
		desc = "Browse Apeiros's opinion pieces."
	else
		-- it's a topic
		desc = "Browse Apeiros's articles about " .. display_name .. '.'
	end

	return Provide {
		nav_active = '/blog',

		Page {
			title = title,
			desc = desc,
			head = {},
			content = {
				h1(title),
				nav(a {
					href = '/blog',
					'(Back to all articles)',
				}),
				ArticleList(posts),
			},
		},
	}
end
