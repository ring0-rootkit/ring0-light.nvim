local config = require("ring0-ligt.config")

local M = {}

---Delete ring0light autocmds when the
---theme changes to something else
---@package
function M.on_colorscheme()
	vim.cmd([[autocmd! ring0light]])
	vim.cmd([[augroup! ring0light]])
end

local function create_autocmds()
	local ring0_light_group = vim.api.nvim_create_augroup("ring0light", { clear = true })
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		group = ring0_light_group,
		pattern = "*",
		callback = function()
			require("colors.ring0-light").on_colorscheme()
		end,
	})

	vim.api.nvim_create_autocmd("FileType", {
		group = ring0_light_group,
		pattern = "qf,help",
		callback = function()
			vim.cmd.setlocal("winhighlight=Normal:NormalSB,SignColumn:SignColumnSB")
		end,
	})

	-- This is a mitigation for new Nvim v0.9.0 lsp semantic highlights
	-- overriding treesitter highlights.
	-- TODO: link these to relevant treesitter groups in the future.
	-- See :h lsp-semantic-highlight
	vim.api.nvim_create_autocmd("ColorScheme", {
		group = ring0_light_group,
		pattern = "*",
		callback = function()
			-- Hide all semantic highlights
			for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
				vim.api.nvim_set_hl(0, group, {})
			end
		end,
	})
end

---Clear current highlights and set Neovim global `colors_name`
function M.load()
	local highlights = require("ring0-light.highlights")

	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "ring0-light"

	highlights.setup()

	create_autocmds()
end

---Change colorscheme to ring0light
function M.colorscheme() end

---ring0light configuration bootstrapper
---@param opts? ring0lightOpts
function M.setup(opts)
	config.setup(opts)
end

return M
