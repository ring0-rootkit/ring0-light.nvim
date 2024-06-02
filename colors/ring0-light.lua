-- local function R()
--	for k in pairs(package.loaded) do
--		if k:match(".*ring0-light.*") then
--			package.loaded[k] = nil
--		end
--	end
--   package.loaded["ring0-light"] = nil
--   require("ring0-light").setup()
-- end

-- vim.api.nvim_create_user_command("ring0lightTest", R, {})

require("colors.ring0-light").load()
