-- vim: textwidth=86 fo=tjnql
return {
	skip = true, -- probably revisit ts at a later date when i finish the rewrite
	title = 'Using Lua to build a website',
	desc = 'Disorganized thoughts about my Lua static site generator',
	date = '2026-06-26',
	tags = { 'Lua', 'web dev' },
}, Article {
	-- {{{ intro
	Callout {
		level = 'warn',
		title = 'Disclaimer',
		content = p [[
			I would not recommend using the SSG I have made, at least in its current form;
			I'm just writing about it here to share my thoughts. It's not designed to be
			performant (I prioritized implementation simplicity instead) and it still has
			a bunch of rough edges.
		]],
	},

	p [[
		It's been about a year since I created the first version of my website, which was
		made in pure HTML/CSS with no JavaScript. For quite a long time, I was reluctant
		to add new pages due to the lack of a proper templating system, which meant I'd
		have to copy shared components like the navbar between pages manually.
	]],
	p [[
		Sometime this year, I decided that it was time for a rewrite. I didn't want to use
		a complex JS framework like Astro, which narrowed my options to just static site
		generators. However, the existing options for SSGs like Jekyll, Hugo, and even
		Eleventy were a bit too complex and "batteries-included" for my taste.
	]],
	p [[
		A short while later, I had a silly idea: I could write my own SSG in Lua. After a
		bit of work, this little project ended up evolving into the ~1300 SLOC system
		that I now use to build this website.
	]],
	-- }}}

	-- {{{ but why?
	Section 'but why?' {
		p [[
			The main reason I even considered this idea in the first place was because I
			realized that Lua's syntax sugar, which allows for omitting parentheses when
			calling a function with a single table or string argument (as well as how Lua
			allows you to mix string and integer keys in a table), allows for the
			construction of a pretty clean DSL for writing HTML. Something like this:
		]],

		CodeBlock { data = require('src.data.code.blog.lua_website_1') },

		p {
			[[
				Lua has an environment feature which allows us to inject values into the
				global scope, which is perfect for making HTML tags available without putting
				them in a local table and manually accessing each one. If we put an
			]],
			code '__index',
			[[
				metamethod on the table used as the environment, we can also generate new
				elements on the fly instead of having to populate the environment table
				beforehand, which simplifies the implementation.
			]]
		},

		p [[
			The ability to inject arbitrary globals also unlocks something else for us;
			we can write CSS keywords directly without making them strings, as long as the
			env's generation logic correctly handles returning the correct value for CSS
			keywords:
		]],

		CodeBlock { data = require('src.data.code.blog.lua_website_2') },

		p [[
			With this in mind, I began cobbling together a tool to start generating some
			web pages.
		]],
	},
	-- }}}

	-- {{{ how I use it
	Section 'how I use it' {
		p [[
			The SSG I ended up making is extremely minimalist; there's almost no features
			built in by default. You get HTML and CSS generation, the component registration
			system, and a "middleware"/metadata processing system, and not much else. The
			flexibility mostly comes from the latter aspect; you can arbitrarily group and
			process pages based on their metadata just by writing your own simple functions.
		]],
		p [[
			This is simple, but deceptively powerful (in my opinion), just like Lua itself.
			You can implement features like conditional rendering of pages, path rewriting,
			sorting blog posts by any arbitrary metric in different lists, etc. all
			expressed as simple Lua functions that iterate over tables and do some
			processing. For example, after sorting blog posts chronologically, I run this
			processor to add next/previous links when available:
		]],

		CodeBlock {
			label = 'init.lua',
			data = require('src.data.code.blog.lua_website_3'),
		},

		p {
			'and then in my ', code 'Article', ' component, I simply reference the values ',
			code 'ctx.page.meta.prev', ' and ', code 'ctx.page.meta.next',
			[[
				and then conditionally generate next/previous navigation links to those pages
				if they're non-nil.
			]],
		},

		-- TODO
	},
	-- }}}

	-- {{{ future steps
	Section 'future steps' {
		p [[
			Although elegant to use (imo), the current implementation is not ideal due to
			a bunch of poor design decisions I made early on, and hacks that I bolted on
			afterward to add additional features. The codebase is quite messy in a few
			areas, and there's still plenty of room for improvement in general:
		]],
		Ul {
			li {
				[[
					Currently, entire files are written at once. Output text is pushed to a
					table and then aggregated with
				]],
				code 'table.concat', ',',
				[[
					which is fine for small outputs but will be memory-intensive for huge ones.
					This might also have some GC pressure issues due to frequent allocation and
					deallocation of DOM node tables (although I haven't profiled any of this).
				]]
			},
			li {
				'The magical ', code '__index', ' ',
				[[
					on the DSL environment that automatically creates missing HTML tags and
					CSS keywords can cause silent and difficult-to-track errors if you reference
					an undefined variable; instead of being nil, it will automatically create a
					meaningless HTML node object. There should probably be some check against
					allowed tags/keywords.
				]]
			},
			-- TODO: talk about potential async and incremental rebuilds
		},
		p {
			[[
				In the future, I will probably rewrite this in Rust with a Lua binding to
				expose the same API surface. Implementation-wise, it won't be as simple, but
				it'll be much more performant and robust. I might also add more nice
				features like metamethods for CSS units, which would compile arithmetic
				expressions like
			]],
			code 'vh(100) - rem(1)',
			' to the CSS ',
			code 'calc(100vh - 1rem)',
			'.'
		},
		p {
			[[
				This rewrite would also allow better cross-platform support, because currently
				I rely on the assumption that the SSG runs on a Unix-like OS in order to avoid
				Lua dependencies (by finding files using shell commands instead).
			]],
		},
	},
	-- }}}

	-- {{{ conclusion
	Section 'conclusion' {
		-- TODO

		p {
			'You can find the source code for this blog post ',
			-- TODO: update link
			a {
				href = 'https://github.com/Apeiros-46B/website/blob/main/src/site/blog/lua-website.html.lua',
				'here',
			},
			'.',
		},
	},
	-- }}}
}
