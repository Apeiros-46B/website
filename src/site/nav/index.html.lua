local socials = {
	-- platform corresponds to FaIcon ids
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
	Rule '#title' {
		display = flex,
		align_items = center,
		flex_direction = row,
		gap = rem(0.5),

		-- logo
		Rule '&> svg' {
			width = rem(1.6),
			height = rem(1.6),
			flex_shrink = 0,
			color = var 'fg_accent',
		},
	},

	Rule '#more-posts' {
		color = var 'fg_dim',
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
	title = 'Apeiros - programming and photography',
	desc = 'Personal site of Apeiros, a CS student, programmer, and photographer.',
	head = {
		JsonLd {
			Type = 'Person',
			name = 'Apeiros',
			alternateName = 'Apeiros-46B',
			nationality = {
				Type = 'Country',
				name = 'Canada',
				identifier = 'CA',
			},
			sameAs = {
				'https://x.com/apeiros46b',
				'https://github.com/Apeiros-46B',
				'https://codeberg.org/Apeiros',
			},
			url = 'https://apeiros.xyz',
		},
	},
	content = {
		h1 { id = 'title', Logo, 'Apeiros' },

		section {
			id = 'socials-outer',
			aria_label = 'Social media links and contact information',
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
				end),
			},
		},

		-- {{{ self-intro
		p {
			strong 'Hello, I am Apeiros!',
			[[
				I'm a Computer Science student at UBC Vancouver. I'm passionate about
				programming, nature photography, and 3D art, and I dabble in a bit of drawing,
				electronic music production, and VFX.
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
				'projects',
			},
			' with varying degrees of usefulness.',
			[[
				Currently, I'm mainly interested in game development, graphics programming,
				and operating system development, and I might begin exploring compilers and DSP
				in the near future. My favorite programming languages are Rust, Zig and Lua,
				and I am also familiar with C++, Java, Python, TypeScript, and various others.
			]],
		},
		-- }}}

		-- {{{ 3 recent blog posts
		function(ctx)
			local num_pages = #ctx.manifest.groups.blog.chrono
			local count = math.min(3, num_pages)
			if count == 0 then return nil end

			local pages = {}
			for i = 1, count do
				pages[i] = ctx.manifest.groups.blog.chrono[i]
			end

			local more
			if count < num_pages then
				local remaining = num_pages - count
				local plural = remaining == 1 and '' or 's'

				more = p {
					id = 'more-posts',
					'...(', remaining, ' more article', plural, ' ',
					a {
						href = '/blog',
						'on the main page',
					},
					')',
				}
			end

			return Section 'recent blog posts' {
				p {
					[[
						I occasionally write about random topics that interest me (mostly
						programming-related, but sometimes other topics too). Here are a few of
						the most recent articles I've written. You can find more
					]],
					' ',
					a { href = '/blog', 'on this page' },
					'.'
				},
				ArticleList(pages),
				more,
			}
		end,
		-- }}}
	},
}
