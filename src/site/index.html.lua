local socials = {
	{
		platform = 'GitHub',
		username = 'Apeiros-46B',
		url = 'https://github.com/Apeiros-46B',
	},
	{
		platform = 'Twitter',
		username = 'apeiros46b',
		url = 'https://x.com/apeiros46b',
	},
	{
		platform = 'Email',
		username = 'apeiros46@gmail.com',
		url = 'mailto:apeiros46@gmail.com',
	},
}

GlobalStyles {
	Query '@media' { min_width = '550px' } {
		Rule '#title' {
			display = grid,
			justify_content = center,
		},
		Rule '#socials-outer' {
			display = grid,
			justify_content = center,
		},
	},

	Query '@media' { max_width = '550px' } {
		Rule '#socials' {
			display = flex,
			flex_flow = { column, nowrap },
			gap = rem(0.5),
			Rule '&> li' { margin_right = 0 },
			Rule '&> li::after' { content = Quoted '' },
		},
	},

	Rule '#socials > li > svg' {
		margin_right = rem(0.5),
	},
}

return Page {
	title = 'apeiros.xyz',
	description = "Apeiros's homepage",
	head = {},
	content = {
		h1 {
			id = 'title',
			'apeiros.xyz',
		},
		section {
			id = 'socials-outer',
			aria_label = "Social links and contact info",
			HorizList {
				id = 'socials',
				For (socials) (function(entry)
					return li {
						FaIcon(entry.platform),
						a {
							href = entry.url,
							aria_label = entry.platform,
							entry.username,
						},
					}
				end)
			},
		},
		p {
			strong 'Hello, I am Apeiros!',
			[[
				I'm a Computer Science student at UBC. I'm passionate about programming,
				nature photography, and 3D art, and I dabble in a bit of electronic music
				production and VFX.
			]],
		},
		p {
			[[
				I spend quite a lot of time writing programs for fun, and over the years I've
				created many
			]],
			' ',
			a {
				href = '/projects.html',
				'projects'
			},
			' with varying degrees of usefulness.',
			[[
				Currently, I'm mainly interested in game development, graphics programming,
				and compilers, although DSP and OS development are also areas that I might
				start exploring soon. My favorite programming languages are Rust, Zig and Lua,
				and I am also familiar with C++, Java, Python, TypeScript, and various others.
			]],
		},
	},
}
