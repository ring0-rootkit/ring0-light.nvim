local Color = require("ring0-light.color")
local M = {}

---@type table<string, Color>
M = {
	none = Color.none(),
	fg = Color.new(0x202020),
	["fg+1"] = Color.new(0x202020),
	["fg+2"] = Color.new(0x202020),
	white = Color.new(0xffffff),
	black = Color.new(0x000000),
	["bg-1"] = Color.new(0xebebeb), -- help menu
	bg = Color.new(0xf5f5f5),
	["bg+1"] = Color.new(0xe8e8e8), -- highlighted text
	["bg+2"] = Color.new(0xe0e0e0), -- current line
	["bg+3"] = Color.new(0xf4f4ff), -- IDK
	["bg+4"] = Color.new(0x404040), -- floating window borders
	["red-1"] = Color.new(0xff4500),
	red = Color.new(0xff4500),
	["red+1"] = Color.new(0xff4f58),
	green = Color.new(0x25b825),
	yellow = Color.new(0xffcc00),
	brown = Color.new(0xcc8c3c),
	quartz = Color.new(0x40c7ba),
	["niagara-2"] = Color.new(0x303540),
	["niagara-1"] = Color.new(0xb0b0b0),
	niagara = Color.new(0x2a7abd),
	wisteria = Color.new(0x895ae8),

	primary = Color.new(0x0000fc),
}

return M
