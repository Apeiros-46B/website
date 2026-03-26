return Article {
	title = "Test",
	description = 'Test page',
	date = '2026-03-24',
	updated_date = '2026-03-25',
	tags = { 'lua', 'ssg' },
	head = {},
	content = {
		Header 'A1',
		Header '2B',
		Callout {
			level = 'info',
			content = p 'Admonition',
		},
		Header 'C3',
		CodeBlock {
			label = 'src/sync/worker.rs',
			data = require('src.data.code_hl.worker'),
			range = { 77, 101 },
			highlight = { { 98, 100 } },
		},
	},
}
