-- file, preferences,keyboard shortcuts, change alt+l to shift+alt+l
-- 🧡
-- function love.load()
--     number = 0
-- end

-- game loop, updates every frame
-- function love.update(dt)
--     number = number + 1
-- end

-- function love.draw()
--     love.graphics.print(number)
-- end

-- 🧡
-- function love.load()
    
-- end
-- function love.update(dt)
    
-- end
-- function love.draw()
--     love.graphics.setColor(0,1,0)
--     love.graphics.rectangle("fill",0,0,200,100)
--     -- love.graphics.rectangle("line",0,0,200,100)

--     -- rgb color scheme
--     -- https://www.w3schools.com/colors/colors_picker.asp
--     love.graphics.setColor(255/255, 102/255, 0/255)
--     love.graphics.circle("fill",300,200,100)
-- end

-- 🧡
function love.load()
    target = {}
    target.x = 300
    target.y = 300
    target.radius = 50

    score = 0
    timer = 0

    game_font = love.graphics.newFont(40)
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.setColor(1,0,0)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    love.graphics.setColor(1,1,1)
    love.graphics.setFont(game_font)
    love.graphics.print(score,0,0)
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        local mouse_to_target = distance_between(x,y,target.x, target.y)
        if mouse_to_target <= target.radius then
            score = score + 1
            target.x = math.random(target.radius,love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius,love.graphics.getHeight() - target.radius)
        end
    end
end

function distance_between(x1,y1,x2,y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end