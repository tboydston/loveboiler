--[[
    This file is used for storing small, global, helper functions.
]]

local utils = {}

--[[
    Split string into table deliminated by specified seperator. Required By sceneManager.
    @param  inputstr string  String being evaluated.
    @param  sep string  Deliminator
    @return table Table of string seperated by deliminator. 
]]
function utils:split (inputstr, sep)

    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end


return utils