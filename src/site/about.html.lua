return Provide {
	nav_ephemeral_page = 'about',
	Page {
		title = 'about',
		description = 'About this website',
		about_shown = true,
		head = {},
		content = {
			h1 'about',

			p {
				'This website is made with ',
				a {
					href = 'https://github.com/Apeiros-46B/lwk',
					'lwk, my Lua static site generator',
				},
				'. The code for the site can be found in ',
				a {
					href = 'https://github.com/Apeiros-46B/www',
					'this repository',
				},
				'.',
				[[
					It is also is designed to be fully functional without JavaScript;
					the only usage of JavaScript is for
				]],
				' ',
				a {
					href = 'https://github.com/plausible/analytics',
					'Plausible Analytics'
				},
				',',
				[[
					which is completely anonymous (no user identifiers, no cookies) and
					not strictly required for anything to work properly.
				]],
			},

			p {
				'The light mode colorscheme used on this website is ',
				a {
					href = 'https://github.com/Apeiros-46B/elysium',
					'elysium',
				},
				', my own colorscheme, and the dark mode colorscheme is ',
				a {
					href = 'https://github.com/sainnhe/everforest',
					'Everforest by sainnhe',
				},
				' ("Hard Dark" variant, prior to ',
				a {
					href = 'https://github.com/sainnhe/everforest/commit/c7d3ffec0a4725c5154c824f0d036fa26a40232a',
					'c7d3ffe',
				},
				').'
			},
		},
	},
}
