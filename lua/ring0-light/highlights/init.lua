local M = {}

---@class HighlightsProvider
---@field highlights table<string, Highlight>
---@field setup fun() Set highlights

---@type HighlightsProvider[]
local providers = {
	require("ring0-light.highlights.colorscheme"),
	require("ring0-light.highlights.lsp"),
	require("ring0-light.highlights.vim"),
	require("ring0-light.highlights.terminal"),
	require("ring0-light.highlights.treesitter"),
	require("ring0-light.highlights.cmp"),
	require("ring0-light.highlights.telescope"),
}

---Set highlights for configured providers
function M.setup()
	for _, provider in ipairs(providers) do
		provider:setup()
	end
	vim.opt.guicursor:append("a:Cursor/lCursor")
end

return M
