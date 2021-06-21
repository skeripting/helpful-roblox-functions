local function custom_gsub(str, find, replacement, replacementIndex)
	local index = 1 
	local i = 1 
	while true do 
		local p1, p2 = string.find(str, find, index, true)
		if not p1 or not p2 then
			break 
		end
		if i == replacementIndex then
			str = str:sub(1, p1-1)..tostring(replacement)..str:sub(p2+1)
			break 
		end
		index = p2+1
		i += 1 
	end
	return str 
end

local function reverse_format_Color3(c3String)
	local red, green, blue = c3String:match("rgb%(([%d]+), ([%d]+), ([%d]+)%)")
	return Color3.fromRGB(red, green, blue)
end

local function format_Color3(v)
	local red = floor(v.R * 255)
	local green = floor(v.G * 255)
	local blue = floor(v.B * 255)
	return "rgb("..str(red)..", "..str(green)..", "..str(blue)..")"
end
