return Page {
	title = "apeiros.xyz - about",
	description = 'About this website',
	about_shown = true,
	head = {},
	content = {
		h1 'about',
		p {
			'This website is powered by ',
			a {
				href = 'https://github.com/Apeiros-46B/lwk',
				'lwk, my Lua SSG',
			},
			'. You can find the code for ',
			a {
				href = 'https://github.com/Apeiros-46B/www',
				'the site here',
			},
			'.',
		},
		p {
			'The light mode colorscheme is my own colorscheme, ',
			a {
				href = 'https://github.com/Apeiros-46B/elysium',
				'elysium',
			},
			', and the dark mode colorscheme is ',
			a {
				href = 'https://github.com/sainnhe/everforest',
				'Everforest',
			},
			' by sainnhe (Hard Dark variant, prior to ',
			a {
				href = 'https://github.com/sainnhe/everforest/commit/c7d3ffec0a4725c5154c824f0d036fa26a40232a',
				'commit c7d3ffe',
			},
			').'
		},
	},
}
