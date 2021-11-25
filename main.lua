-- External Libraries
Utf8 = require("utf8")

-- Global Libraries
Utils = require "lib/utilities"


-- Create Game Global
Game = {}

-- Config
Game.config = require "config"

-- Class Libraries
SceneManager = require "lib/sceneManager"
Game.sceneManager =  SceneManager:new()


function love.load()

    love.window.setTitle( Game.config.windowTitle )
    love.window.setMode( Game.config.screenSize[1], Game.config.screenSize[2] )
    love.keyboard.setKeyRepeat(true)
    love.window.setFullscreen(Game.config.fullScreen, "desktop")

    Game.startTime = love.timer.getTime()
    Game.sceneManager:load( Game.config.startScene )

end

function love.update(dt)
    Game.currentTime = love.timer.getTime()
    Game.runTime = love.timer.getTime() - Game.startTime
    Game.sceneManager:update(dt)
end

function love.draw()
    Game.sceneManager:draw()
end

function love.textinput(text)
    Game.sceneManager:textinput(text)
end

function love.keypressed(key)
    Game.sceneManager:keypressed(key)
end

function love.mousepressed(x, y, button, istouch)
    Game.sceneManager:mousepressed(x, y, button, istouch)
end