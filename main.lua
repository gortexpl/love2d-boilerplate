require "player"
require "map"
require "menu"

function love.load()

	medium = love.graphics.newFont(45)
	gamestate = "playing"
	gamestate = "menu"
	love.graphics.setBackgroundColor(255,255,255)
	--Buttons!
	button_spawn(5,200,"Start","start")
	button_spawn(5,550,"Quit","quit")

end
function love.update()
	mousex = love.mouse.getX()
	mousey = love.mouse.getY()
	if gamestate == "playing" then
		player_move()
		map_collide()
	end
	if gamestate == "menu" then
		button_check()
end
function love.draw()
	if gamestate == "playing" then
		player_draw()
	end
	if gamestate == "menu" then
		button_draw()
	end
end

function love.mousepressed(x,y)
	if gamestate == "menu" then
		button_click(x,y)
	end
end
end