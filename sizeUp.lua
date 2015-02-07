local hotkey = require "mjolnir.hotkey"
local grid = require "mjolnir.bg.grid"

local sizeUp = {}

local function snapWindow(direction)
	grid.GRIDHEIGHT = 2
	grid.GRIDWIDTH = 2

	grid.resizewindow_thinner()
	if direction == "left" then
		grid.pushwindow_left()
	elseif direction == "right" then
		grid.pushwindow_right()
	end
	grid.pushwindow_up()
	grid.resizewindow_taller()
end

function sizeUp.init(modifier)
	hotkey.bind(modifier, "left", function()
		snapWindow("left")
	end)

	hotkey.bind(modifier, "right", function()
		snapWindow("right")
	end)
end

return sizeUp