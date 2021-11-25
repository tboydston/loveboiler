local demo  = {
    -- You can add scene specific variables here. 
}


function demo:load() 

end


function demo:update(dt) 

end


function demo:draw() 
    love.graphics.setColor(0,0,1,1)
    love.graphics.print("Demo Scene 1. Press 's' to advance to scene 2", 400, 300) 
end


function demo:keypressed(key) 
    if key == 's' then
        Game.sceneManager:change('demo2')
    end
end

function demo:mousepressed(x, y, button, istouch)

end


function demo:textinput(text)

end


function demo:reset()



end

return demo

