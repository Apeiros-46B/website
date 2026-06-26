return Provide {
	nav_ephemeral_page = '404',
	Page {
		title = 'not found',
		desc = '404 Not Found',
		head = {
			meta { name = 'robots', content = 'noindex' },
		},
		content = {
			h1 '404 Not Found',
			p 'The page you were looking for does not exist.',
			a { href = '/', 'Go home?' },
		},
	},
}
