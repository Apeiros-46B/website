local function inspect(val, indent, visited)
	indent = indent or ""
	visited = visited or {}

	if type(val) ~= "table" then
		if type(val) == "string" then
			return string.format("%q", val)
		else
			return tostring(val)
		end
	end

	if visited[val] then
		return "<cycle " .. tostring(val) .. ">"
	end
	visited[val] = true

	local result = "{\n"
	local next_indent = indent .. "  "

	for k, v in pairs(val) do
		local key_str
		if type(k) == "string" and k:match("^[%a_][%w_]*$") then
			key_str = k
		elseif type(k) == "string" then
			key_str = "[" .. string.format("%q", k) .. "]"
		else
			key_str = "[" .. tostring(k) .. "]"
		end

		if key_str ~= 'debug_trace' then
			result = result .. next_indent .. key_str .. " = " .. inspect(v, next_indent, visited) .. ",\n"
		end
	end

	result = result .. indent .. "}"
	return result
end

return {
	inspect = inspect,
	dbg = function(obj) print(inspect(obj)) end,
}
