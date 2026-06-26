local projects = {
	{
		name = 'avalon',
		url = 'https://codeberg.org/avalonOS/avalon',
		start_date = '2026-04',
		end_date = 'present',
		stack = { 'Zig', 'RISC-V' },
		is_a = 'is a work-in-progress experimental OS.',
		desc = [[
			It's still very incomplete and nowhere near any semblance of usability (just a
			tiny and insecure kernel with a buddy allocator and a round-robin scheduler),
			but my eventual goals are to explore some non-Unix-like OS designs (microkernel,
			single address space leveraging CHERI, capability-based security, etc.) and
			experiment with human-computer interaction and UI design in the future.
		]],
	},
	{
		name = 'qalc.nvim',
		url = 'https://github.com/Apeiros-46B/qalc.nvim/tree/rewrite',
		start_date = '2022-12',
		end_date = 'present',
		note = 'undergoing a rewrite',
		stack = { 'Lua', 'C++', 'Neovim', 'libqalculate' },
		is_a = 'is a reactive text-based calculator inside of Neovim.',
		desc = [[
			You can write expressions that depend on others, edit their values, and watch
			the results update in real time. With libqalculate as a backend, advanced
			features like unit conversion, algebra, and calculus are available, integrated
			with diagnostics, syntax highlighting, and autocompletion support.
		]],
	},
	{
		name = 'lwk',
		url = 'https://github.com/Apeiros-46B/lwk',
		start_date = '2026-03',
		end_date = '2026-06',
		stack = { 'Lua', 'HTML', 'CSS' },
		is_a = '(Lua Website Kit) is a web templating engine/SSG in ~1300 SLOC.',
		desc = [[
			It's mostly a bespoke tool made for this website because I got tired of
			hand-writing HTML and CSS but didn't want to use a complex JS framework.
			It allows pages, templates, and components to be authored with a Lua-based DSL,
			compiling them into raw HTML+CSS. It also supports file handlers (extensible
			enough to do something like write your own markdown processor in Lua).
		]],
	},
	{
		name = 'tspmo',
		url = 'https://github.com/Apeiros-46B/tspmo',
		start_date = '2026-02',
		end_date = '2026-03',
		stack = { 'TypeScript', 'ElysiaJS', 'discord.js' },
		is_a = '(TypeScript-Powered Media Organizer) is a basic tagged media gallery.',
		desc = [[
			It was built for organizing memes and reaction images for me and a few friends,
			and primarily designed for interaction via a Discord bot frontend, supporting
			in-app uploads and search through both stack and full-text search (title and
			description). It also supports importing posts from Tenor GIFs or attachments
			on Discord messages.
		]],
	},
	{
		name = 'sidechain',
		url = 'https://github.com/Apeiros-46B/sidechain',
		start_date = '2026-01',
		end_date = '2026-01',
		stack = { 'Rust' },
		is_a = 'is a bulk audio transcoder.',
		desc = [[
			I wanted a way to automatically to mirror my music library in Opus for my phone,
			and the existing solutions I looked had limitations like re-transcoding lossy
			files, so I made this, which uses SQLite to track files and ffmpeg to transcode
			them, skipping previously transcoded tracks and passing through lossy tracks,
			album covers, and other unrecognized files.
		]],
	},
	{
		name = 'raytracer',
		url = 'https://github.com/Apeiros-46B/raytracer',
		start_date = '2024-05',
		end_date = '2024-06',
		stack = { 'Rust', 'GLSL', 'WebGL', 'egui' },
		is_a = 'is a path-tracing renderer in the browser that supports simple objects',
		desc = [[
			(ellipsoids and boxes). It uses a naive stochastic method to approximate
			realistic lighting, implemented as a fragment shader in OpenGL for GPU
			acceleration. It's written in Rust using egui for UI interaction and can run
			as a native application too.
		]],
	},
}

GlobalStyles {
	Rule '.project-entry > :not(:last-child)' {
		margin_bottom = rem(0.5),
	},
	Rule '.project-entry > p.project-notes' {
		font_size = rem(0.9),
		color = var 'fg_dim',

		Rule '&> :is(time, span)' {
			font_size = pct(100),
		},
	},
}

return { ord = 2 }, Page {
	title = 'projects',
	desc = "Explore Apeiros's software projects: SSGs, image boards, OSes, and more.",
	head = {},
	content = {
		h1 'projects',
		For (projects) (function(data)
			return Section(data.name, h2) {
				class = 'project-entry',
				p {
					class = 'project-notes',
					Date(data.start_date, data.end_date),
					If (data.note) (function()
						return ' (' .. data.note .. ')'
					end),
				},
				TagList(data.stack),
				p {
					strong {
						a { href = data.url, data.name },
						' ' .. data.is_a,
					},
					data.desc,
				},
			}
		end),
	},
}
