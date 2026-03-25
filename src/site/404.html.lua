return Page {
	title = "apeiros.xyz - 404",
	description = '404 Not Found',
	about_shown = true,
	head = {},
	content = {
		h1 '404 Not Found',
		p "We couldn't find the page you were looking for.",
		p {
			'→ ',
			a {
				href = '/index.html',
				'Go home?',
			},
		},
	},
}
