return { ord = 4 }, Page {
	title = 'blog',
	description = 'Blog posts',
	head = {},
	content = {
		h1 'blog',
		Section 'top tags' (ArticleTagList(10)),
		Section 'recent articles' (function(ctx)
			return ArticleList(ctx.manifest.groups.blog.chrono)
		end)
	},
}
