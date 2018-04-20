--Screen dimensions
height = nil
width = nil

--Velocity for the DvD logo
vx = nil
vy = nil

--Position for the DvD logo
px = nil
py = nil

--DvD logo image
imageFile = nil

--Color fo the DvD Logo
colorR = nil
colorB = nil
colorG = nil

--Initialize everything in the load function
function love.load()
    width, height = love.graphics.getDimensions()

    vx = 1
    vy = 1

    px = (width/2)
    py = (height/2)

    imageFile = love.graphics.newImage("DVD_video_logo.png")

    colorB = 1
    colorG = 1
    colorR = 1    

end

--Calculate anything needed in the update function.
function love.update(dt)
    px = px + vx;
    py = py + vy;
    if px > (width- 100)  or px < 0 then
        vx = vx * -1
        colorB = love.math.random( )
        colorR = love.math.random( )
        colorG = love.math.random( )
    end
    if py > (height- 59)  or py < 0 then
        vy = vy * -1
        colorB = love.math.random( )
        colorR = love.math.random( )
        colorG = love.math.random( )
    end
end

--Set the color and draw the image in the draw function
function love.draw()
    love.graphics.setColor(colorR, colorG, colorB, 1)
    love.graphics.draw(imageFile, px, py)
end