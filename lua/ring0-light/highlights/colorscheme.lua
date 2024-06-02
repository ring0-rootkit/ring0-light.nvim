local Highlight = require("ring0-light.highlight")
local c = require("ring0-light.palette")
local opts = require("ring0-light.config").get_opts()

---@type HighlightsProvider
local M = {
	highlights = {},
}

---Set ring0light-specific highlights
function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

-- Highlights inspired by
-- https://github.com/ellisonleao/gruvbox.nvim/blob/main/lua/gruvbox/groups.lua#L43

-- Colors

M.highlights.fg0 = Highlight.new("ring0lightFg0", { fg = c.fg })
M.highlights.fg1 = Highlight.new("ring0lightFg1", { fg = c["fg+1"] })
M.highlights.fg2 = Highlight.new("ring0lightFg2", { fg = c["fg+2"] })

M.highlights.bg_1 = Highlight.new("ring0lightBg_1", { fg = c["bg-1"] })
M.highlights.bg0 = Highlight.new("ring0lightBg0", { fg = c.bg })
M.highlights.bg1 = Highlight.new("ring0lightBg1", { fg = c["bg+1"] })
M.highlights.bg2 = Highlight.new("ring0lightBg2", { fg = c["bg+2"] })
M.highlights.bg3 = Highlight.new("ring0lightBg3", { fg = c["bg+3"] })
M.highlights.bg4 = Highlight.new("ring0lightBg4", { fg = c["bg+4"] })

M.highlights.dark_red = Highlight.new("ring0lightDarkRed", { fg = c["red-1"] })
M.highlights.dark_red_bold = Highlight.new("ring0lightDarkRedBold", { fg = c["red-1"], bold = opts.bold })
M.highlights.red = Highlight.new("ring0lightRed", { fg = c.red })
M.highlights.red_bold = Highlight.new("ring0lightRedBold", { fg = c.red, bold = opts.bold })
M.highlights.light_red = Highlight.new("ring0lightLightRed", { fg = c["red+1"] })
M.highlights.light_red_bold = Highlight.new("ring0lightLightRedBold", { fg = c["red+1"], bold = opts.bold })

M.highlights.green = Highlight.new("ring0lightGreen", { fg = c.green })
M.highlights.green_bold = Highlight.new("ring0lightGreenBold", { fg = c.green, bold = opts.bold })

M.highlights.yellow = Highlight.new("ring0lightYellow", { fg = c.yellow })
M.highlights.yellow = Highlight.new("ring0lightYellowBold", { fg = c.yellow, bold = opts.bold })

M.highlights.brown = Highlight.new("ring0lightBrown", { fg = c.brown })
M.highlights.brown_bold = Highlight.new("ring0lightBrownBold", { fg = c.brown, bold = opts.bold })

M.highlights.quartz = Highlight.new("ring0lightQuartz", { fg = c.quartz })
M.highlights.quartz_bold = Highlight.new("ring0lightQuartzBold", { fg = c.quartz, bold = opts.bold })

M.highlights.darker_niagara = Highlight.new("ring0lightDarkestNiagara", { fg = c["niagara-2"] })
M.highlights.darker_niagara_bold =
	Highlight.new("ring0lightDarkestNiagaraBold", { fg = c["niagara-2"], bold = opts.bold })
M.highlights.dark_niagara = Highlight.new("ring0lightDarkNiagara", { fg = c["niagara-1"] })
M.highlights.dark_niagara_bold = Highlight.new("ring0lightDarkNiagaraBold", { fg = c["niagara-1"], bold = opts.bold })
M.highlights.niagara = Highlight.new("ring0lightNiagara", { fg = c.niagara })
M.highlights.niagara_bold = Highlight.new("ring0lightNiagaraBold", { fg = c.niagara, bold = opts.bold })

M.highlights.wisteria = Highlight.new("ring0lightWisteria", { fg = c.wisteria })
M.highlights.wisteria_bold = Highlight.new("ring0lightWisteriaBold", { fg = c.wisteria, bold = opts.bold })

-- Signs

M.highlights.red_sign = Highlight.new("ring0lightRedSign", { fg = c.red, reverse = opts.invert.signs })
M.highlights.yellow_sign = Highlight.new("ring0lightYellowSign", { fg = c.yellow, reverse = opts.invert.signs })
M.highlights.green_sign = Highlight.new("ring0lightGreenSign", { fg = c.green, reverse = opts.invert.signs })
M.highlights.quartz_sign = Highlight.new("ring0lightQuartzSign", { fg = c.quartz, reverse = opts.invert.signs })
M.highlights.niagara_sign = Highlight.new("ring0lightNiagaraSign", { fg = c.niagara, reverse = opts.invert.signs })
M.highlights.wisteria_sign = Highlight.new("ring0lightWisteriaSign", { fg = c.wisteria, reverse = opts.invert.signs })

-- Underlines

M.highlights.red_underline = Highlight.new("ring0lightRedUnderline", { sp = c.red, undercurl = opts.undercurl })
M.highlights.yellow_underline =
	Highlight.new("ring0lightYellowUnderline", { sp = c.yellow, undercurl = opts.undercurl })
M.highlights.green_underline = Highlight.new("ring0lightGreenUnderline", { sp = c.green, undercurl = opts.undercurl })
M.highlights.quartz_underline =
	Highlight.new("ring0lightQuartzUnderline", { sp = c.quartz, undercurl = opts.undercurl })
M.highlights.niagara_underline =
	Highlight.new("ring0lightNiagaraUnderline", { sp = c.niagara, undercurl = opts.undercurl })
M.highlights.wisteria_underline =
	Highlight.new("ring0lightWisteriaUnderline", { sp = c.wisteria, undercurl = opts.undercurl })

return M
