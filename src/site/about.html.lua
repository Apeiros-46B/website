return Page {
	title = "apeiros.xyz - about",
	description = 'About this website',
	about_shown = true,
	head = {},
	content = {
		h1 'about',
		p {
			'This website is built using ',
			a {
				href = 'https://github.com/Apeiros-46B/lwk',
				code 'lwk', ', my Lua-based static site generator.'
			},
		},
		p {
			'You can find the source code for ',
			a {
				href = 'https://github.com/Apeiros-46B/www',
				'the website itself here',
			},
			'.',
		},
	},
}
