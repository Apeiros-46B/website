-- TODO: make an image widget that shows a label above similar to the codeblock widget
-- TODO: make a lightbox component, some images are too large rn
local projects = {
	-- TODO: avalon someday... "Q5 2026" does he know
	-- {
	-- 	name = 'avalon',
	-- 	url = 'https://github.com/avalonCE',
	-- 	start_date = '2026-09',
	-- 	end_date = 'present',
	-- 	note = 'work in progress',
	-- 	stack = { 'Zig', 'zio' },
	-- 	is_a = 'is a work-in-progress extensible structured computing environment.',
	-- 	desc = [[
	-- 	]],
	-- },
	{
		name = 'omnia',
		url = 'https://github.com/Apeiros-46B/omnia',
		start_date = '2026-08',
		end_date = 'present',
		note = 'work in progress',
		stack = { 'Rust', 'Axum', 'SQLite' },
		is_a = 'is a work-in-progress generic knowledge/multimedia organizer.',
		desc = {
			[[
				I'm working on this because none of the existing software in this category
				supported the rich feature set I wanted. I plan to support files of any type,
				object-attached Markdown and links, full-text search, OCR, predicate-based
				access control, external file libraries, and more. This is a ground-up
				redesign of an
			]],
			' ', a { href = '#tspmo', 'older project' }, '.'
		},
	},
	{
		name = 'mirage',
		url = 'https://github.com/Apeiros-46B/mirage',
		start_date = '2026-03',
		end_date = 'present',
		note = 'work in progress',
		stack = { 'Rust', 'Slang', 'Vulkan' },
		is_a = 'is a work-in-progress voxel rendering engine.',
		desc = [[
			My goal is to create a world editor primarily catered toward building
			explorable spaces with seamless portal shortcuts/wormholes and stylized voxel
			shading. So far, I've mostly been working on Vulkan abstractions and data
			structures, but I am very close to being able to tackle portals. I already have
			a working demo of raymarching a stored world with simple path tracing for
			lighting:
		]],
		media = img {
			loading = 'lazy',
			src = 'https://cdn-proxy.apeiros.workers.dev/projects/mirage-big-v1.webp',
		},
	},
	{
		name = 'qalc.nvim',
		url = 'https://github.com/Apeiros-46B/qalc.nvim/tree/rewrite',
		start_date = '2026-02',
		end_date = '2026-11',
		note = 'rewrite, old version from 2022',
		stack = { 'C++', 'Lua', 'Neovim', 'libqalculate' },
		is_a = 'is a text-based reactive math worksheet inside of Neovim.',
		desc = [[
			It allows you to write expressions that depend on others, edit their values,
			and watch the results update in real time. With libqalculate as a backend,
			advanced features like unit conversion, algebra, and calculus are available and
			integrated with diagnostics, syntax highlighting, and autocompletion support.
		]],
		media = img {
			loading = 'lazy',
			src = '/assets/projects/qalc.webp',
		},
	},
	{
		name = 'lwk',
		url = 'https://github.com/Apeiros-46B/lwk',
		start_date = '2026-03',
		stack = { 'Lua', 'HTML', 'CSS' },
		is_a = '(Lua Website Kit) is a web templating engine/SSG in ~1300 SLOC.',
		desc = [[
			It's mostly a bespoke tool made for this website because I got tired of
			hand-writing HTML and CSS but didn't want to use a complex JS framework.
			It allows pages, templates, and reusable components to be written using
			a Lua-based DSL, which are compiled into raw HTML + CSS.
		]],
		media = CodeBlock {
			data = require('src.data.code.projects.lwk'),
		},
	},
	{
		name = 'tspmo',
		url = 'https://github.com/Apeiros-46B/tspmo',
		start_date = '2026-02',
		end_date = '2026-03',
		stack = { 'TypeScript', 'ElysiaJS', 'discord.js' },
		is_a = '(TypeScript-Powered Media Organizer) is a basic tagged media gallery.',
		desc = [[
			It was built for organizing memes and GIFs for me and a few friends, and
			primarily designed for interaction via a Discord bot frontend, supporting
			in-app uploads and search through both tags and full-text search (title and
			description). It also supports importing posts from Tenor GIFs or attachments
			on Discord messages.
		]],
		media = img {
			loading = 'lazy',
			src = '/assets/projects/tspmo.webp',
		},
	},
	{
		name = 'sidechain',
		url = 'https://github.com/Apeiros-46B/sidechain',
		start_date = '2026-01',
		end_date = '2026-01',
		stack = { 'Rust' },
		is_a = 'is a bulk audio transcoder for creating Opus libraries.',
		desc = [[
			None of the existing software I found for mirroring lossless music libraries
			to lossy formats suited my use case, so I made this. Designed to be run in a
			cron job, it uses SQLite to track files and opusenc to transcode lossless ones,
			avoiding wasted work on unchanged input files and passing through lossy
			and non-audio files (such as cover images). I plan to generalize this into a
			one-to-one rule-based "file mapper" in the near future.
		]],
	},
	{
		name = 'raytracer',
		url = 'https://github.com/Apeiros-46B/raytracer',
		start_date = '2024-05',
		end_date = '2024-06',
		stack = { 'Rust', 'GLSL', 'OpenGL ES', 'egui' },
		is_a = 'is a path-tracing renderer that supports simple objects',
		desc = [[
			(ellipsoids and boxes). It implements path tracing to approximate realistic
			lighting, running in a fragment shader in OpenGL for GPU acceleration. It's
			written in Rust using egui for UI interaction and can run either in the
			browser (via WebAssembly and WebGL) or as a native application. It doesn't
			have any acceleration structures or other optimizations; I just built it to
			learn basic graphics programming concepts at the time.
		]],
		media = img {
			loading = 'lazy',
			src = '/assets/projects/raytracer.webp',
		},
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
	Rule '.project-media' {
		margin_top = rem(0.7),

		Rule '&> img' {
			max_height = vh(30),
		},
	},
}

-- might split into WIP and finished sections later, idk
local function Projects(data, hdr)
	return For (data) (function(entry)
		return Section(entry.name, hdr or h3) {
			class = 'project-entry',
			p {
				class = 'project-notes',
				Date(entry.start_date, entry.end_date),
				If (entry.note) (function()
					return ' (' .. entry.note .. ')'
				end),
			},
			TagList(entry.stack),
			p {
				strong {
					If (entry.url) {
						a { href = entry.url, entry.name },
					} {
						entry.name
					},
					' ' .. entry.is_a,
				},
				entry.desc,
			},
			If (entry.media) {
				div {
					class = 'project-media',
					entry.media,
				},
			},
		}
	end)
end

return { ord = 2 }, Page {
	title = 'projects',
	desc = "Explore Apeiros's software projects",
	head = {},
	content = {
		h1 'projects',
		Projects(projects),
	},
}
