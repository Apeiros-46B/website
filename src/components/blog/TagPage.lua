-- displays all blog articles tagged with the tag extracted from the page path

return function(ctx)
	local tag = ctx.page.rel_path:match('^blog/tags/(.+)%.html%.lua$')
	if not tag then return nil end

	local posts = {}
	for _, page in ipairs(ctx.manifest.groups.blog.chrono) do
		if page.meta.tags then
			for _, t in ipairs(page.meta.tags) do
				if t == tag then
					posts[#posts+1] = page
					break
				end
			end
		end
	end

	return Provide {
		nav_active = '/blog',

		Page {
			title = 'apeiros.xyz - tag "' .. tag .. '"',
			description = 'Articles tagged "' .. tag .. '"',
			head = {},
			content = {
				h1('blog - articles tagged "' .. tag .. '"'),
				p(a {
					href = '/blog',
					'Back to all articles',
				}),
				ArticleList(posts),
			},
		},
	}
end
