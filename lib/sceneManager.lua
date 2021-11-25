--[[
    Loads, manages, and updated the current scene. 
    LOVE2D game loop functions are routed to this file which in turn routes them to the active scene. 
]]

local sceneManager = {
    scenes = {},
    current = ""
}

function sceneManager:new(newObject)
    newObject = newObject or {}          
    setmetatable(newObject,self)
    self.__index = self  
    newObject:load()    
    return newObject
end 

--[[
    Autoload scenes from the /scenes directory. 
    @param startScene string Name of scene to start at. 
]]
function sceneManager:load(startScene) 
    
    local sceneFile = love.filesystem.getDirectoryItems( "scenes/" )
    
    for key, value in pairs(sceneFile) do

        local sceneNameTable = Utils:split(value,".")
        local sceneName = sceneNameTable[1]
        self.scenes[sceneName] = require ("scenes/"..sceneName )

    end

    self:change(startScene)
    
end

--[[
    Change to a new scene and call scenes load function. 
    @param startScene string Name of next scene.

]]
function sceneManager:change(newScene)

    if self.scenes[newScene] == nil then 
        return false 
    else 
        self.current = newScene
        self.scenes[newScene]:load()
    end

    return true

end

--[[
    Return current string.
    @return string Current scene name. 
]]
function sceneManager:current()
    return sceneManager.current
end


--[[
    Below functions are path through functions that pass the love native funcitons to the active secene.
]]

function sceneManager:update(dt)
    if self.scenes[self.current].update ~= nil then 
        self.scenes[self.current]:update(dt)
    end
end

function sceneManager:draw()
    if self.scenes[self.current].draw ~= nil then 
        self.scenes[self.current]:draw()
    end
end

function sceneManager:textinput(text)
    if self.scenes[self.current].textinput ~= nil then 
        self.scenes[self.current]:textinput(text)
    end
end

function sceneManager:keypressed(key)
    if self.scenes[self.current].keypressed ~= nil then 
        self.scenes[self.current]:keypressed(key)
    end
end

function sceneManager:mousepressed(x, y, button, istouch)
    if self.scenes[self.current].mousepressed ~= nil then 
        self.scenes[self.current]:mousepressed(x, y, button, istouch)
    end
end


return sceneManager