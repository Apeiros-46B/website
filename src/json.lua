-- serialize a lua table to json (only string keys and integer arrays are encoded)
local function encode(val, indent, depth, buf)
	if type(val) == 'string' then
		buf[#buf+1] = '"'
		buf[#buf+1] = val:gsub([[\]], [[\\]])
			:gsub('"', [[\""]])
			:gsub('\n', [[\n]])
			:gsub('\t', [[\t]])
		buf[#buf+1] = '"'

	elseif type(val) == 'number' then
		buf[#buf+1] = tostring(val)

	elseif type(val) == 'boolean' then
		buf[#buf+1] = val and 'true' or 'false'

	elseif type(val) == 'table' then
		local empty = true
		for _ in pairs(val) do
			empty = false
			break
		end
		if empty then
			buf[#buf+1] = '{}'
			return
		end

		local prefix = indent and ('\n' .. ('\t'):rep(depth + 1)) or ''
		local suffix = indent and ('\n' .. ('\t'):rep(depth)) or ''
		local first = true

		if val[1] ~= nil then

			buf[#buf+1] = '['
			for i = 1, #val do
				if first then
					first = false
				else
					buf[#buf+1] = ','
				end
				buf[#buf+1] = prefix
				encode(val[i], indent, depth + 1, buf)
			end
			buf[#buf+1] = suffix
			buf[#buf+1] = ']'

		else

			buf[#buf+1] = '{'
			for k, v in pairs(val) do
				if type(k) == 'string' then
					if first then
						first = false
					else
						buf[#buf+1] = ','
					end
					buf[#buf+1] = prefix
					encode(k, indent, depth + 1, buf)
					buf[#buf+1] = ':'
					encode(v, indent, depth + 1, buf)
				end
			end
			buf[#buf+1] = suffix
			buf[#buf+1] = '}'

		end

	end
end

return function(val, pretty)
	local buf = {}
	encode(val, pretty, 0, buf)
	return table.concat(buf)
end
