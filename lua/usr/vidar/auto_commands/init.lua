-- ----------- Info  -----------
-- DOES creates autocommands
-- PATH: auto_commands/init.lua
-- REFERENCE: init.lua
-- ----------- Structure  -----------
-- Imports functionality from other files in the same directory
-- ----------- Help ------------
-- :help au OR :help autocmd

-- IMPORTS
local builder = require(configPath .. "auto_commands.build") -- Change path of this

-- INITIALIZATION
builder.rust()

-- ===== NerdFonts =======
local errorMessage = " AUTOCMD Error: "
-- ===== TRIGGERS =======
-- Help with toggling off and on functionaltiy
local presentation = false
local filetypes = true
-- ======== Base ========

local create_group = vim.api.nvim_create_augroup -- Creates a autocmd group
local create_command = vim.api.nvim_create_autocmd -- Creates a new autocmd command
local create_keymap = vim.api.nvim_set_keymap -- Creates a new keymap

-- ======== Groups ========
local presentation_group = create_group("presentation", {clear=true})
local rust_group = create_group("rust", {clear=true})
local stat_group = create_group("stats", {clear=true})
local group = create_group("GroupName", { clear = true })

-- ======== Protected calling ========
local function validate(func)
	local status_ok, err = pcall(func)
	-- Enable this for debuffing if needed
	-- print(string.format("%s", status_ok)) -- Prints out the status
	if not status_ok then
		 print(string.format(errorMessage .. " %s", err)) -- Prints out the status
	  return
	end
end

local function rustCargoRun()

	local opts = { noremap = false , silent = true }  -- options
	create_command({"BufWritePost"}, 
	{pattern = {"rust"},
	command = ":!cargo run"
})

end

local function presentationMode()

	-- Options to not show any output on commands
	local opts = { noremap = false , silent = true }  -- options
	create_command({"FileType"}, 
	{pattern = {"vim_presentation_mode"},
	callback = function()
		vim.api.nvim_create_autocmd({"BufNewFile", "BufRead", "BufEnter"},{
		callback = function()
			vim.api.nvim_buf_set_keymap(0, "n", "<Right>", ":bnext<cr>", opts)
			vim.api.nvim_buf_set_keymap(0, "n", "<Left>", ":bprev<cr>", opts)
			-- vim.api.nvim_set_keymap("n", "<Left>", ":bprev<cr>", opts)
		end,
		buffer = 0})
	end,
	group = presentation_group,
	desc = "Enables the presentation mode, with remaps functions etc for .vpm filetypes"
})

end

-- ======== Calling of functions ========
-- REMEMBER TO ADD FUNCTIONS HERE
local funcs = {presentationMode, rustCargoRun}
for k,v in pairs(funcs) do 
	validate(v)
end
