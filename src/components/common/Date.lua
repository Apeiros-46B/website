GlobalStyles {
	Rule '.date' {
		font_size = rem(0.9),
		color = var 'fg_dim',
	}
}

-- args should be YYYY-MM-DD. finish is optional, omit to create one date
local function Date(start, finish, is_child)
	local class_attr = not is_child and 'date' or nil

	if not finish then
		if start == 'present' then
			return span {
				class = class_attr,
				'present',
			}
		else
			return time {
				class = class_attr,
				datetime = start,
				-- parenthesized to avoid spilling multiple values
				(start:gsub('%-', '.')),
			}
		end
	elseif start == finish then
		return Date(start, nil, is_child)
	else
		-- TODO: probably make aria_label more human readable using date parsing
		return span {
			class = 'date',
			aria_label = ('From %s to %s'):format(
				start:gsub('%-', ' '),
				finish:gsub('%-', ' ')
			),
			Date(start, nil, true),
			span { aria_hidden = true, '–' },
			Date(finish, nil, true),
		}
	end
end

return Date
