local demo2  = {
    -- You can add scene specific variables here. 
}


function demo2:load() 

end


function demo2:update(dt) 

end


function demo2:draw() 
    love.graphics.setColor(1,0,0,1)
    love.graphics.print("Demo Scene 2. Press 's' to advance to scene 1", 400, 300) 
end


function demo2:keypressed(key) 
    if key == 's' then
        Game.sceneManager:change('demo')
    end
end

function demo2:mousepressed(x, y, button, istouch)

end


function demo2:textinput(text)

end


function demo2:reset()



end

return demo2

