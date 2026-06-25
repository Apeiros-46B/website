local projects = {
	{
		name = 'avalon',
		tags = { 'Zig', 'RISC-V' },
		url = 'https://github.com/Apeiros-46B/lwk',
		start_date = '2026-04',
		end_date = 'present',
		link_desc = 'is a work-in-progress experimental OS.',
		long_desc = [[
			It's still very incomplete and nowhere near any semblance of usability
			(just a tiny kernel with a buddy allocator and a round-robin scheduler),
			but my eventual goals are to explore some non-Unix-like OS designs
			(microkernel, single address space leveraging CHERI, capability-based
			security, etc.) and experiment with human-computer interaction and UI
			design in the future.
		]],
	},
	{
		name = 'qalc.nvim',
		tags = {
			'Lua',
			'C++',
			'Neovim',
			{ href = 'https://github.com/Qalculate/libqalculate', name = 'libqalculate' },
		},
		url = 'https://github.com/Apeiros-46B/qalc.nvim/tree/rewrite',
		start_date = '2022-12',
		end_date = 'present',
		note = 'undergoing a rewrite',
		link_desc = 'is a reactive text-based calculator inside of Neovim.',
		long_desc = [[
			You can write expressions that depend on others, edit their values, and
			watch the results update in real time. With libqalculate as a backend,
			advanced features like unit conversion, algebra, and calculus are available,
			integrated with diagnostics, syntax highlighting, and autocompletion support.
		]],
	},
	{
		name = 'lwk',
		tags = { 'Lua', 'HTML', 'CSS' },
		url = 'https://github.com/Apeiros-46B/lwk',
		start_date = '2026-03',
		end_date = '2026-06',
		link_desc = '(Lua Website Kit) is a web templating engine/SSG in ~1300 SLOC.',
		long_desc = [[
			It's mostly a bespoke tool made for this website because I got tired of
			hand-writing HTML and CSS but didn't want to use a complex JS framework.
			It turns Lua files containing a special table-based DSL into raw HTML+CSS
			and supports custom components/templating and file handlers (extensible
			enough to do something like bring your own markdown processor).
		]],
	},
	{
		name = 'tspmo',
		tags = { 'TypeScript', 'ElysiaJS', 'discord.js' },
		url = 'https://github.com/Apeiros-46B/tspmo',
		start_date = '2026-02',
		end_date = '2026-03',
		link_desc = '(TypeScript-Powered Media Organizer) is a basic tagged media gallery.',
		long_desc = [[
			It was built for organizing memes and reaction images for me and a few friends,
			and primarily designed for interaction via Discord, supporting in-app uploads and
			search through both tags and full-text search (title and description). It also
			supports importing posts from sources like Discord attachments and Tenor GIFs.
		]],
	},
	{
		name = 'sidechain',
		tags = { 'Rust' },
		url = 'https://github.com/Apeiros-46B/sidechain',
		start_date = '2026-01',
		end_date = '2026-01',
		link_desc = 'is a program that uses ffmpeg to transcode audio files in bulk.',
		long_desc = [[
			I wanted something to make a synced mirror of my music library in Opus for my phone,
			and the existing solutions I looked had limitations like re-transcoding already
			lossy files, so I made this, which uses SQLite to track files and ffmpeg to transcode
			them, skipping previously transcoded files and passing through lossy files, album
			covers, etc.
		]],
	},
	{
		name = 'raytracer',
		tags = {
			'Rust',
			'GLSL',
			'WebGL',
			{ href = 'https://github.com/emilk/egui', name = 'egui' },
		},
		url = 'https://github.com/Apeiros-46B/raytracer',
		start_date = '2024-05',
		end_date = '2024-06',
		link_desc = 'is a naive path-tracer in the browser that renders simple objects',
		long_desc = [[
			(ellipsoids and boxes). It uses a stochastic method to approximate realistic
			lighting, implemented as a fragment shader in OpenGL for GPU acceleration.
			It's written in Rust using egui for UI interaction and can run as a native
			application too.
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

local function Project(args)
	return Section(args.name, h2) {
		class = 'project-entry',
		p {
			class = 'project-notes',
			Date(args.start_date, args.end_date),
			If (args.note) (function()
				return ' (' .. args.note .. ')'
			end),
		},
		TagList(args.tags),
		p {
			strong {
				a { href = args.url, args.name },
				' ' .. args.link_desc,
			},
			args.long_desc,
		},
	}
end

return { ord = 2 }, Page {
	title = 'apeiros.xyz - projects',
	description = 'Software projects',
	head = {},
	content = {
		h1 'projects',
		For (projects) (Project),
	},
}
