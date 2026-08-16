return Provide {
	nav_ephemeral_page = 'colophon',
	Page {
		title = 'colophon',
		desc = 'Learn about how this website was built using tools like Lua.',
		head = {},
		content = {
			h1 'colophon',

			p {
				'This website is made with ',
				a {
					href = 'https://github.com/Apeiros-46B/lwk',
					'lwk, my Lua static site generator',
				},
				'. The code for the site can be found in ',
				a {
					href = 'https://github.com/Apeiros-46B/website',
					'this repository',
				},
				'.',
				[[
					It is also is designed to be fully functional without JavaScript;
					the only usage of JavaScript on this site is for
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
				'The light mode colorscheme used on this website is my own colorscheme, ',
				a {
					href = 'https://github.com/Apeiros-46B/elysium',
					'elysium',
				},
				', and the dark mode colorscheme is ',
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
