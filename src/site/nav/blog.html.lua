return { ord = 4 }, Page {
	title = 'apeiros.xyz - blog',
	description = 'Blog posts',
	head = {},
	content = {
		h1 'blog',
		function(ctx)
			return ArticleList(ctx.manifest.groups.blog.chrono)
		end,
	},
}
