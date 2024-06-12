local c = require("ring0light.palette")

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()
	-- highlights
	hl(0, "Normal", { fg = c.fg, bg = c.bg })
	hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_darker })
	hl(0, "FloatBorder", { fg = c.fg, bg = c.bg })
	hl(0, "NormalNC", { fg = c.fg, bg = c.bg }) -- Normal non current
	hl(0, "NormalSB", { fg = c.fg, bg = c.bg_darker }) -- Normal text in side bar
	hl(0, "Pmenu", { fg = c.fg, bg = c.bg_darker })
	hl(0, "SignColumn", { fg = "NONE", bg = c.bg })
	hl(0, "CursorLineNr", { fg = c.main, bg = "NONE", bold = true })
	hl(0, "Statement", { fg = c.main, bg = "NONE", bold = true })
	hl(0, "TelescopeSelection", { fg = c.fg, bg = c.gray })
	hl(0, "CursorLine", { fg = "NONE", bg = c.gray })
	hl(0, "StatusLine", { fg = c.fg, bg = c.gray })
	hl(0, "Visual", { fg = c.fg, bg = c.dark_gray })
	hl(0, "VisualNOS", { fg = c.fg, bg = c.dark_gray})

	-- special words
	hl(0, "Comment", { fg = c.brown, bg = "NONE", italic = true })
	hl(0, "Special", { fg = c.fg, bg = "NONE", bold = true })
	hl(0, "variable", { fg = c.fg, bg = "NONE" })
	hl(0, "Function", { fg = c.fg, bg = "NONE" })
	hl(0, "String", { fg = c.green, bg = "NONE" })
	hl(0, "Identifier", { fg = c.fg, bg = "NONE" })
	hl(0, "Title", { fg = c.main, bg = "NONE", bold = true })

	-- diagnostics
	hl(0, "DiagnosticError", { fg = c.red, bg = "NONE", bold = true })
	hl(0, "DiagnosticWarn", { fg = c.yellow, bg = "NONE", bold = true })
	hl(0, "DiagnosticHint", { fg = c.cyan, bg = "NONE", bold = true })
end

return theme
