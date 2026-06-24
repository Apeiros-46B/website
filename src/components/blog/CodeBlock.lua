local TABLE = require('table')
local core = require('dsl.core')

local function ornament_border(color)
	return { var 'ornament_thickness', solid, var(color) }
end

local fake_border = 'linear-gradient(to right, var(--fg_sep) var(--ornament-thickness), transparent var(--ornament-thickness))'

local ellipsis_html = '<span class="codeblock-line"><span class="codeblock-line-text"><span class="codeblock-comment">...</span></span></span>\n'

GlobalStyles {
	Rule '.codeblock-outer pre' {
		overflow_x = auto,
		padding_bottom = rem(1),

		-- painted underneath the lines
		-- spans the padding area, extending behind the horizontal scrollbar
		background_image = fake_border,
	},
	Rule '.codeblock-outer code' {
		display = flex,
		flex_direction = column,
		min_width = pct(100),
		width = max_content, -- container stretches to the widest line
	},

	Rule '.codeblock-outer' {
		background_color = var 'bg_raised',
	},
	Rule '.codeblock-label' {
		padding_left = rem(1),
		padding_top = rem(1),
		padding_bottom = rem(1),
		border_left = ornament_border 'fg_sep',
	},

	Rule '.codeblock-line' {
		-- expand to full scrollable width
		display = flex,
		width = pct(100),

		Rule '&.highlighted' {
			background_color = var 'bg_accent',
		},
	},

	-- dynamic per-line border that stays still when scrolling
	Rule '.codeblock-line::before' {
		content = Quoted '',
		position = sticky,
		left = 0, -- pinned to the left edge
		flex_shrink = 0,
		width = var 'ornament_thickness',
		background_color = var 'fg_sep',
	},
	Rule '.codeblock-line.highlighted::before' {
		background_color = var 'fg_accent',
	},

	-- the actual underlying text content of the line, to group all fragments together
	-- into one unit for flex layouting
	Rule '.codeblock-line-text' {
		padding_left = rem(1),
		padding_right = rem(1),
	},

	-- {{{ syntax highlighting
	Rule '.codeblock-comment' {
		color = var 'fg_dim',
		font_style = italic,
	},
	Rule '.codeblock-punctuation' {
		color = var 'fg_main',
	},
	Rule '.codeblock-punctuation-special' {
		-- TODO: reflect upstream in elysium
		-- hi! link @punctuation.special Orange
		color = var 'code_operator',
	},
	Rule '.codeblock-operator' {
		color = var 'code_operator',
	},
	Rule '.codeblock-keyword' {
		color = var 'code_keyword',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-keyword-modifier' {
		color = var 'code_modifier',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-keyword-operator' {
		color = var 'code_operator',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-boolean' {
		color = var 'code_literal',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-number' {
		color = var 'code_literal',
	},
	Rule '.codeblock-string' {
		color = var 'code_string',
	},
	Rule '.codeblock-string-escape' {
		color = var 'code_escape',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-constant-builtin' {
		color = var 'code_constant',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-constant' {
		color = var 'code_constant',
	},
	Rule '.codeblock-variable' {
		color = var 'fg_strong',
	},
	Rule '.codeblock-variable-builtin' {
		color = var 'code_special',
	},
	Rule '.codeblock-variable-member' {
		color = var 'code_field',
	},
	Rule '.codeblock-property' {
		color = var 'code_field',
	},
	Rule '.codeblock-attribute' {
		color = var 'code_special',
	},
	Rule '.codeblock-function' {
		color = var 'code_function',
	},
	Rule '.codeblock-function-macro' {
		-- TODO: reflect upstream in elysium
		-- hi! link @function.macro PurpleEmph
		color = var 'code_special',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-constructor' {
		color = var 'code_type',
	},
	Rule '.codeblock-type' {
		color = var 'code_type',
	},
	Rule '.codeblock-type-builtin' {
		color = var 'code_type',
		font_weight = var 'code_emph_weight',
	},
	Rule '.codeblock-module' {
		color = var 'code_module',
	},
	-- }}}
}

local class_cache = {}

return Component.new('CodeBlock', function(_, _, args, _)
	local highlighted = {}
	if type(args.highlight) == 'table' then
		for _, range in ipairs(args.highlight) do
			local start_line = type(range) == 'table' and range[1] or range
			local end_line = type(range) == 'table' and (range[2] or range[1]) or range
			for j = start_line, end_line do
				highlighted[j] = true
			end
		end
	end

	local data_len = #args.data
	local start_line = 1
	local end_line = data_len
	local has_range = type(args.range) == 'table'

	if has_range then
		start_line = args.range[1] or 1
		end_line = args.range[2] or data_len
	end

	local buf = {}
	local n = 0

	if has_range and start_line > 1 then
		n = n + 1
		buf[n] = ellipsis_html
	end

	for i = start_line, math.min(end_line, data_len) do
		local line_chunks = args.data[i]
		local line_class
		local sr_text = ''

		if highlighted[i] then
			line_class = 'codeblock-line highlighted'
			sr_text = '<span class="sr-only">Highlighted: </span>'
		else
			line_class = 'codeblock-line'
		end

		n = n + 1
		buf[n] = '<span class="' .. line_class .. '">'
		n = n + 1
		buf[n] = sr_text
		n = n + 1
		buf[n] = '<span class="codeblock-line-text">'

		for _, chunk in ipairs(line_chunks) do
			local hl_group = chunk[1]
			local text = core.escape_html(chunk[2])

			if hl_group == '' then
				n = n + 1
				buf[n] = text
			else
				local class_str = class_cache[hl_group]
				if not class_str then
					if text == '{' or text == '}' then
						-- HACK: always treat Lua table delimiters as punct instead of ctor
						-- should probably be handled upstream in nvim config instead
						class_str = 'codeblock-punctuation'
					else
						local classes = {}
						local current_class = 'codeblock'
						for part in hl_group:gmatch('[^%.]+') do
							current_class = current_class .. '-' .. part
							classes[#classes+1] = current_class
						end
						class_str = TABLE.concat(classes, ' ')
					end

					class_cache[hl_group] = class_str
				end

				n = n + 1
				buf[n] = '<span class="'
				n = n + 1
				buf[n] = class_str
				n = n + 1
				buf[n] = '">'
				n = n + 1
				buf[n] = text
				n = n + 1
				buf[n] = '</span>'
			end
		end

		n = n + 1
		buf[n] = '</span></span>\n'
	end

	if has_range and end_line < data_len then
		n = n + 1
		buf[n] = ellipsis_html
	end

	return figure {
		class = 'codeblock-outer',

		If (args.label) {
			figcaption {
				class = 'codeblock-label',
				args.label,
			},
		} {
			Set('aria_label', 'code block')
		},

		pre {
			code {
				class = 'codeblock-content',
				Raw(TABLE.concat(buf)),
			},
		},
	}
end)
