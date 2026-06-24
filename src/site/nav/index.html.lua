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
	Rule '#logo' {
		width = rem(1.6),
		height = rem(1.6),
		flex_shrink = 0,
		color = var 'fg_accent',
	},

	Rule '#title' {
		display = flex,
		align_items = center,
		flex_direction = row,
		gap = rem(0.5),
	},

	Rule '#socials > li > svg' {
		margin_right = rem(0.5),
	},

	Query '@media' { min_width = px(550) } {
		Rule '#title' {
			justify_content = center,
		},
		Rule '#socials-outer' {
			display = grid,
			justify_content = center,
		},
	},

	Query '@media' { max_width = px(550) } {
		Rule '#title' {
			justify_content = flex_start,
		},
		Rule '#socials' {
			display = flex,
			flex_direction = column,
			gap = rem(0.5),
			Rule '&> li' { margin_right = 0 },
			Rule '&> li::after' { content = Quoted '' },
		},
	},
}

return { ord = 1 }, Page {
	title = 'apeiros.xyz',
	description = "Apeiros's homepage",
	head = {},
	content = {
		h1 {
			id = 'title',
			-- logo
			Raw [[<svg id="logo" viewBox="0 0 800 800" xmlns="http://www.w3.org/2000/svg"><path d="M400 100L443.301 75H356.699L400 100ZM53.5898 700L10.2886 675L53.5898 750V700ZM573.205 400V450H659.808L616.506 375L573.205 400ZM356.699 125L529.904 425L616.506 375L443.301 75L356.699 125ZM400 650H53.5898V750H400V650ZM573.205 350H226.795V450H573.205V350ZM201.795 443.301L721.4 743.301L771.4 656.699L251.795 356.699L201.795 443.301ZM96.8911 725L270.096 425L183.494 375L10.2886 675L96.8911 725ZM270.096 425L443.301 125L356.699 75L183.494 375L270.096 425Z" fill="currentColor"/></svg>]],
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
				nature photography, and 3D art, and I dabble in a bit of drawing, electronic
				music production, and VFX.
			]],
		},
		p {
			[[
				I spend quite a lot of time writing computer programs for fun, and over the
				years I've created many
			]],
			' ',
			a {
				href = '/projects',
				'projects'
			},
			' with varying degrees of usefulness.',
			[[
				Currently, I'm mainly interested in game development, graphics programming,
				and operating system development, and I might begin exploring compilers and DSP
				in the near future. My favorite programming languages are Rust, Zig and Lua,
				and I am also familiar with C++, Java, Python, TypeScript, and various others.
			]],
		},
	},
}
