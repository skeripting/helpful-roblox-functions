# helpful-roblox-functions
A collection of helpful functions that you may need in your day-to-day scripting on the Roblox platform.

## strings.lua
The *strings.lua* script currently contains the following functions:
### `custom_gsub(str, find, replacement, replacementIndex)`
Lua's current `string.gsub` doesn't allow you to replace the nth match of a string, but rather, has an argument to replace a number of matches. So the `custom_gsub` function provides a way to do so. 
#### Example Usage
`custom_gsub("Owner 1 script_ing: Owner", "Owner", "replaced", 1)`

Returns: *"replaced 1 script_ing: Owner"*

`custom_gsub("Owner 1 script_ing: Owner", "Owner", "replaced", 2)` 

Returns *"Owner 1 script_ing: replaced"*


