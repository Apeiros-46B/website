local to_json = require('src.json')

local function to_json_ld(t, child)
	local formatted = child and {} or { ['@context'] = 'https://schema.org' }

	for k, v in pairs(t) do
		if type(v) == 'table' then
			v = to_json_ld(v, true)
		end

		if type(k) == 'string' then
			local k_new = k:gsub('^%u', function(chr) return '@' .. string.lower(chr) end)
			formatted[k_new] = v
		else
			formatted[k] = v
		end
	end

	return formatted
end

return function(data)
	data = to_json_ld(data)
	return Raw('<script type="application/ld+json">' .. to_json(data) .. '</script>')
end
