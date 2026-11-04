return Provide {
	nav_ephemeral_page = 'colophon',
	Page {
		title = 'colophon',
		desc = 'Learn about how this website was built.',
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

			Section 'theme' {
				p {
					'The light mode color palette used on this website is my own theme, ',
					a {
						href = 'https://github.com/Apeiros-46B/elysium',
						'elysium',
					},
					', and the dark mode color palette is ',
					a {
						href = 'https://github.com/sainnhe/everforest',
						'Everforest by sainnhe',
					},
					' ("Hard Dark" variant, prior to ',
					a {
						href = 'https://github.com/sainnhe/everforest/commit/c7d3ffec0a4725c5154c824f0d036fa26a40232a',
						'c7d3ffe',
					},
					'). The background artwork was made and matched to the palettes using ',
					a { href = 'https://www.blender.org/', 'Blender' },
					', ',
					a { href = 'https://www.affinity.studio/', 'Affinity' },
					', and ',
					a { href = 'https://github.com/ozwaldorf/lutgen-rs', 'lutgen' },
					'.',
				},
			},

			-- empl*yment
			Section 'generative AI usage' {
				p [[
					The content on this website is entirely human-written. LLM-based tools are
					lightly used for some of my software projects, but I do not use GenAI
					to assist in the creation of images, videos, or music.
				]],
			},
		},
	},
}
