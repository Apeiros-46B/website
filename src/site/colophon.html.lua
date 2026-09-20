return Provide {
	nav_ephemeral_page = 'colophon',
	Page {
		title = 'colophon',
		desc = 'Learn about how this website was built using Lua.',
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

			Section 'generative AI stance' {
				p [[
					All non-code content on this website is entirely human-authored; AI tools
					are not involved. I do occasionally use LLMs for programming assistance in
					software projects (including this website), but I never use generative AI
					for writing prose, generating images, or otherwise creating non-code
					artifacts.
				]],
				p [[
					I personally think the technology is interesting and can certainly be useful
					across a wide range of fields (especially software) if used correctly, but
					I do not believe it should be applied to creative or artistic endeavours.
				]],
			},
		},
	},
}
