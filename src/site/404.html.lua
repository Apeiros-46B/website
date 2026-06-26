return Provide {
	nav_ephemeral_page = 'not found',
	Page {
		title = 'not found',
		description = '404 Not Found',
		head = {
			meta { name = 'robots', content = 'noindex' },
		},
		content = {
			h1 '404 Not Found',
			p "We couldn't find the page you were looking for.",
			a {
				href = '/index',
				'Go home?',
			},
		},
	},
}
