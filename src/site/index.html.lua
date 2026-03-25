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
}

local projects = {
	{
		name = 'zv',
		desc = 'Real-time voxel rendering engine made using Zig and OpenGL',
		extra = ' (WIP)',
	},
}

-- TODO: move into SpillHorizList component
-- TODO: fix, no longer works in the new layout
GlobalStyles {
	Query '@container' { min_width = '355px' } {
		Rule '#socials-outer' {
			display = grid,
			justify_content = center,
		},
	},
	Query '@container' { max_width = '354px' } {
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
	title = "apeiros.xyz",
	description = "Apeiros's homepage",
	head = {},
	content = {
		h1 'apeiros.xyz',
		div {
			id = 'socials-outer',
			HorizList {
				id = 'socials',
				For (socials) (function(entry)
					return li {
						FaIcon(entry.platform),
						a {
							href = entry.url,
							aria_label = 'Link to ' .. entry.platform,
							entry.username,
						},
					}
				end)
			},
		},
		p {
			strong 'Hello, I am Apeiros!',
			[[
				I'm a Computer Science student at UBC, self-taught programmer, 3D artist,
				photographer, and aspiring music producer. I primarily program using C++, Rust,
				Zig and Lua, although I am also familiar with Java, Python, TypeScript, and
				various other languages. I am interested in graphics programming, game
				development, and OS development, and I'm also exploring web development and
				system administration in my spare time.
			]]
		},
		section {
			id = 'projects',
			h2 'Projects',
			p {
				'These are some of my projects. See the ',
				a { href = '/projects.html', 'dedicated page' },
				' for more information.'
			},
			InsetList {
				For (projects) (function(project)
					return li {
						a { href = '/projects.html#' .. project.name, project.name },
						project.extra or '', ' · ', project.desc,
					}
				end),
			},
		},
	},
}
