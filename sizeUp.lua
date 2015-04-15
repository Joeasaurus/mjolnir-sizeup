local hotkey = require "mjolnir.hotkey"
local grid = require "mjolnir.bg.grid"

local sizeUp = {}

local function snapWindow(direction)
	grid.GRIDHEIGHT = 2
	grid.GRIDWIDTH = 2

	if direction == "left" or direction == "right" then
		grid.resizewindow_thinner()
		if direction == "left" then
			grid.pushwindow_left()
		elseif direction == "right" then
			grid.pushwindow_right()
		end
		grid.pushwindow_up()
		grid.resizewindow_taller()
	elseif direction == "up" or direction == "down" then
		grid.resizewindow_shorter()
		if direction == "up" then
			grid.pushwindow_up()
		elseif direction == "down" then
			grid.pushwindow_down()
		end
		grid.pushwindow_left()
		grid.resizewindow_wider()
	end
end

function sizeUp.init(modifier)
	hotkey.bind(modifier, "left", function()
		snapWindow("left")
	end)

	hotkey.bind(modifier, "right", function()
		snapWindow("right")
	end)

	hotkey.bind(modifier, "up", function()
		snapWindow("up")
	end)

	hotkey.bind(modifier, "down", function()
		snapWindow("down")
	end)
end

return sizeUp