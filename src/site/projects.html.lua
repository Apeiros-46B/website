return Page {
	title = 'apeiros.xyz - projects',
	description = '',
	head = {},
	content = {
		h1 'projects',

		Section 'lwk' {
			TagList { 'Lua', 'HTML', 'CSS' },

			p {
				-- TODO: update the lines of code figure before release
				strong 'lwk (Lua Website Kit) is a site templating engine/SSG in ~1300 LOC.',
				[[
					It's mostly a bespoke tool made for this website because I got tired of
					hand-writing HTML and CSS but didn't want to use a complex JS framework.
					It turns Lua files containing a special table-based DSL into raw HTML+CSS
					and supports custom components and file handlers.
				]],
			},

			-- {{{ details
			details {
				summary 'See code samples',

				p {
					'lwk internally represents all elements and components as tables with ',
					code '__call', ' ',
					[[
						metamethods, allowing the declaration of document trees using Lua's syntax sugar for function calls that only have a single string or table argument. Crucially, the implementation of this metamethod returns the modified element, allowing "instantiated" components to be repeatedly called with new arguments in order to add children or merge/override attributes.
					]]
				},

				p {
					[[
						The following example defines a side note component, which specifies styles to append to the global CSS bundle and returns an
					]], ' ',
					code 'aside', ' ',
					[[
						element with the necessary attributes applied.
					]]
				},

				SideNote(p {
					[[
						This is what that component looks like. Note that I didn't make any typos in the code; lwk provides a Lua environment which automagically resolves HTML tags, components, and CSS keywords without needing you to write a single
					]], ' ',
					code 'require',
					'! For complex CSS properties, you can always fall back to raw strings.'
				}),

				CodeBlock {
					label = 'SideNote.lua',
					data = require('src.data.code_hl.projects.SideNote'),
					highlight = { { 13, 16 } },
				},

				p {
					[[
						Although the returned element has no direct children, when we use the component, we can call/instantiate it again to add new attributes and children:
					]],
				},

				CodeBlock {
					label = 'my_awesome_page.lua',
					data = require('src.data.code_hl.projects.SideNote_usage'),
					range = { 3, 11 },
				},
			},
			-- }}}
		},

		Section 'tspmo' {
			TagList { 'TypeScript', 'ElysiaJS', 'discord.js' },

			p {
				strong 'tspmo (TypeScript-Powered Media Organizer) is a tagged media gallery.',
				[[

				]],
			},
		},

		Section 'qalc.nvim' {
			TagList {
				'Lua',
				'C++',
				'Neovim',
				{
					href = 'https://github.com/Qalculate/libqalculate',
					name = 'libqalculate',
				},
			},

			p {
				strong 'qalc.nvim is a reactive text-based calculator inside of Neovim.',
				[[
					You can write expressions that depend on others, edit their values, and
					watch the results update in real time. With libqalculate as a backend,
					advanced functions like unit conversion and calculus are available,
					integrated with diagnostics, syntax highlighting, and autocompletion
					features.
				]],
			},
		},
	},
}
