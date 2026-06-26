return {
	title = "Test",
	desc = 'Test page',
	date = '2026-03-24',
	updated_date = '2026-03-25',
	tags = { 'Lua', 'SSG' },
}, Article {
	Section 'A1' {
		p 'tspmo',
	},
	Section '2B' {
		Callout {
			level = 'info',
			content = p 'Admonition',
		},
	},
	Section 'C3' {
		-- CodeBlock {
		-- 	label = 'src/sync/worker.rs',
		-- 	data = require('src.data.code_hl.worker'),
		-- 	range = { 77, 101 },
		-- 	highlight = { { 98, 100 } },
		-- },
	},
}
