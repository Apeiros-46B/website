GlobalStyles {
	Rule '.date' {
		font_size = pct(90),
		color = var 'fg_dim',
	},
}

local month_names = {
	'January',
	'February',
	'March',
	'April',
	'May',
	'June',
	'July',
	'August',
	'September',
	'October',
	'November',
	'December',
}

local function ordinal(day)
	if day >= 11 and day <= 13 then
		return 'th'
	end

	local mod = day % 10
	if mod == 1 then
		return 'st'
	elseif mod == 2 then
		return 'nd'
	elseif mod == 3 then
		return 'rd'
	else
		return 'th'
	end
end

local function to_human(date)
	if date == 'present' then return date end

	local year, month, day = date:match('(%d+)%-(%d+)%-(%d+)')
	if year then
		return ('%s %d%s, %s'):format(
			month_names[tonumber(month)],
			tonumber(day),
			ordinal(tonumber(day)),
			year
		)
	end

	year, month = date:match('(%d+)%-(%d+)')
	if year then
		return ('%s %s'):format(month_names[tonumber(month)], year)
	end

	return date
end

-- args should be /YYYY(-MM(-DD)?)?/
-- finish is optional, omit to create one date instead of a range
local function Date(start, finish, is_child)
	local child_class = not is_child and 'date' or nil

	if not finish then
		if start == 'present' then
			return span {
				class = child_class,
				'present',
			}
		else
			return time {
				class = child_class,
				datetime = start,
				to_human(start),
			}
		end
	elseif start == finish then
		return Date(start, nil, is_child)
	else
		return span {
			class = 'date',
			aria_label = ('From %s to %s'):format(to_human(start), to_human(finish)),
			Date(start, nil, true),
			span { aria_hidden = true, '–' },
			Date(finish, nil, true),
		}
	end
end

return Date
