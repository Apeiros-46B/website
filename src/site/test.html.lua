return Article {
	title = "Example blog post",
	description = 'An update on my website',
	date = '2026-03-24',
	tags = { 'lua', 'ssg' },
	toc = {
		p 'Table of contents'
	},
	head = {},
	content = {
		p {
			"I've recently added some things to the rewrite of my website using my ",
			a {
				href = 'https://github.com/Apeiros-46B/lwk',
				'Lua-based SSG',
			},
			'.',
		},
		Callout {
			level = 'info',
			content = p "I've implemented admonitions and side note components.",
		},
		p 'I also devised code blocks with pre-rendered Treesitter highlighting:',
		SideNote(p {
			InlineCode 'run_free()', ' is provided by a sealed extension trait. It runs',
			' the main loop as quickly as possible without blocking, which is ideal for a',
			' rendering thread. ', InlineCode 'run()', ' is overridable so that implementors',
			' can choose to bring their own mainloop (in niche cases) or use the other',
			' pre-defined ones like ', InlineCode 'run_tickrate()', 'which enforces strict',
			' tick deadlines, useful for the main game thread.'
		}),
		CodeBlock {
			label = 'src/sync/worker.rs',
			data = require('src.data.code_hl.worker'),
			range = { 77, 101 },
			highlight = { { 98, 100 } },
		},
	},
}
