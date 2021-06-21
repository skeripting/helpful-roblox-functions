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
