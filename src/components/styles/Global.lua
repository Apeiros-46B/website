GlobalStyles(0, {
	Import 'https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap',
	Import 'https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:ital,wght@0,400;0,600;1,400;1,600&display=swap',
})

GlobalStyles(1, {
	-- {{{ CSS reset
	-- http://meyerweb.com/eric/tools/css/reset/
	-- v2.0 | 20110126
	-- License: none (public domain)
	Raw [[
		html, body, div, span, applet, object, iframe,
		h1, h2, h3, h4, h5, h6, p, blockquote, pre,
		a, abbr, acronym, address, big, cite, code,
		del, dfn, em, img, ins, kbd, q, s, samp,
		small, strike, strong, sub, sup, tt, var,
		b, u, i, center,
		dl, dt, dd, ol, ul, li,
		fieldset, form, label, legend,
		table, caption, tbody, tfoot, thead, tr, th, td,
		article, aside, canvas, details, embed,
		figure, figcaption, footer, header, hgroup,
		menu, nav, output, ruby, section, summary,
		time, mark, audio, video {
			margin: 0;
			padding: 0;
			border: 0;
			font-size: 100%;
			font: inherit;
			vertical-align: baseline;
		}
		article, aside, details, figcaption, figure,
		footer, header, hgroup, menu, nav, section {
			display: block;
		}
		body {
			line-height: 1;
		}
		ol, ul {
			list-style: none;
		}
		blockquote, q {
			quotes: none;
		}
		blockquote:before, blockquote:after,
		q:before, q:after {
			content: '';
			content: none;
		}
		table {
			border-collapse: collapse;
			border-spacing: 0;
		}
	]],
	-- }}}
})

GlobalStyles(2, {
	-- {{{ themes
	Vars ':root' {
		-- default light theme
		-- https://github.com/Apeiros-46B/elysium
		red    = '#904961',
		orange = '#90502a',
		yellow = '#b38143',
		green  = '#546b4f',
		aqua   = '#406b75',
		blue   = '#535d9c',
		purple = '#79508a',

		bg_base = '#ebebeb',
		bg_main = '#ffffff',
		bg_raised = '#f4f4f4',
		bg_lowered = '#f2f2f2',
		bg_accent = '#535d9c1A',

		fg_main = '#333333',
		fg_strong = '#202020',
		fg_dim = '#777777',
		fg_sep = '#ebebeb',
		fg_accent = '#535d9c',

		code_modifier = var 'orange',
		code_keyword = var 'blue',
		code_field = var 'red',
		code_module = var 'red',
	},

	Query '@media' { prefers_color_scheme = 'dark' } {
		-- everforest hard dark, before commit c7d3ffe
		Vars ':root' {
			red    = '#e67e80',
			orange = '#e69875',
			yellow = '#dbbc7f',
			green  = '#a7c080',
			aqua   = '#83c092',
			blue   = '#7fbbb3',
			purple = '#d699b6',

			bg_base = '#2b3339',
			bg_main = '#323c41',
			bg_raised = '#3a454a',
			bg_lowered = '#2d373d',
			bg_accent = '#404d44',

			fg_main = '#d3c6aa',
			fg_strong = '#d3c6aa',
			fg_dim = '#859289',
			fg_sep = '#445055',
			fg_accent = '#a7c080',

			code_modifier = var 'red',
			code_keyword = var 'red',
			code_field = var 'blue',
			code_module = var 'orange',
		},
	},

	Vars ':root' {
		internal_link = var 'blue',
		external_link = var 'aqua',
		scrollbar_thumb = var 'purple',
		scrollbar_track = var 'bg_main',
		scrollbar_width = px(4),
		ornament_thickness = px(4),

		code_operator = var 'orange',
		code_literal = var 'purple',
		code_string = var 'aqua',
		code_escape = var 'yellow',
		code_constant = var 'purple',
		code_function = var 'green',
		code_type = var 'yellow',
		code_special = var 'purple',

		code_emph_weight = 600,
	},
	-- }}}

	-- {{{ default styles
	Rule 'body' {
		margin_left = rem(1),
		margin_right = rem(1),
		font_family = Quoted 'IBM Plex Sans',
		font_size = pct(120),
		color = var 'fg_main',
		background_color = var 'bg_base',
	},
	Rule 'hr' {
		border = none,
		border_top = { px(2), solid, var 'fg_sep' },
		color = var 'fg_sep',
	},
	Rule 'h1' {
		font_size = pct(150),
		font_weight = bold,
	},
	Rule 'h2' {
		font_size = pct(125),
		font_weight = bold,
	},
	Rule 'h3' {
		font_size = pct(110),
		font_weight = bold,
	},
	Rule 'li, p' {
		line_height = pct(140),
	},
	Rule 'a' {
		color = var 'external_link',
	},
	Rule "a[href^='/'], a[href^='#']" {
		color = var 'internal_link',
	},
	Rule 'b, strong' {
		font_weight = bold,
	},
	Rule 'img' {
		max_width = pct(100),
	},
	Rule 'figcaption' {
		color = var 'fg_dim',
		font_size = pct(80),
	},
	Rule 'code, kbd, samp' {
		padding = { px(0), px(8) },
		tab_size = 2,
		_moz_tab_size = 2,
		font_family = Quoted 'IBM Plex Mono',
		font_size = pct(90),
		background_color = var 'bg_raised',
	},
	Rule 'pre' {
		line_height = pct(120),
	},
	Rule 'pre > code' {
		padding = 0,
		background_color = transparent,
	},
	Rule 'summary' {
		font_style = italic,
	},
	Rule 'details > :nth-child(2)' {
		margin_top = rem(1),
	},

	Query '@supports' 'selector(::-webkit-scrollbar)' {
		Rule '::-webkit-scrollbar-track' {
			background_color = var 'scrollbar_track',
		},
		Rule '::-webkit-scrollbar' {
			width = var 'scrollbar_width',
			background_color = var 'scrollbar_track',
		},
		Rule '::-webkit-scrollbar-thumb' {
			background_color = var 'scrollbar_thumb',
		},
	},
	Query '@supports' 'not selector(::-webkit-scrollbar)' {
		Rule '*' {
			scrollbar_width = auto,
			scrollbar_color = { var 'scrollbar_thumb', var 'scrollbar_track' },
		}
	},
	-- }}}

	-- accessibility util, only show to screen readers
	Rule '.sr-only' {
		position = absolute,
		width = px(1),
		height = px(1),
		padding = 0,
		margin = px(-1),
		overflow = hidden,
		clip = 'rect(0, 0, 0, 0)',
		white_space = nowrap,
		border = 0,
	},

	Query '@media' 'screen and (prefers-reduced-motion: no-preference)' {
		Rule 'html' {
			scroll_behaviour = smooth,
		}
	}
})
