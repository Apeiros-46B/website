return Article {
	title = "Test",
	description = 'Test page',
	date = '2026-03-25',
	tags = { 'lua', 'ssg' },
	toc = { p 'TODO' },
	head = {},
	content = {
		Header 'A1',
		Header '2B',
		Callout {
			level = 'info',
			content = p 'bowen bog',
		},
		Header 'C3',
		Header('C3.1', h3),
		Header('C3.2', h3),
		Header 'D4',
		Header('D4.1', h3),
		Header('D4.1.1', h4),
		Header('D4.1.2', h4),
		Header('D4.2', h3),
		CodeBlock {
			label = 'src/sync/worker.rs',
			data = require('src.data.code_hl.worker'),
			highlight = { { 98, 100 } },
		},
	},
}
