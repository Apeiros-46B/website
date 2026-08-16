return { ord = 4 }, Page {
	title = 'blog',
	desc = "Read Apeiros' articles on miscellaneous technical topics.",
	head = {},
	content = {
		h1 'blog',
		Section 'top tags' (ArticleTagList(10)),
		Section 'recent articles' (function(ctx)
			return ArticleList(ctx.manifest.groups.blog.chrono)
		end)
	},
}
