-- ----------- Info  -----------
-- <USES> core.lua
-- This file is for autocmd for building applications
local builder = {}

-- IMPORTS
local core = require(configPath .. 'auto_commands.core')

-- HELPERS
local create_autocmd = vim.api.nvim_create_autocmd

-- Helps with building rust applications
function builder.rust()
	assert(type(core) ~= nil)
	core.create_command(function()
		create_autocmd({"FileType"},
		{
			pattern = {"rust"},
			callback = function()
				vim.api.nvim_buf_set_keymap(0, "n", "<leader>b", ":!cargo run<cr>",{noremap=true, silent=false})
			end,
		})
	end)
end

return builder
