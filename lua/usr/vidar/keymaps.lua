-- ----------- Info  -----------
-- This file handles the keymappings for nvim
-- Core: init.lua
-- ----------- Modes -----------
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"
-- ----------- Template -----------
-- ======= section =======
-- -- keymap("<mode>", "<key_combination>", opts)
-- ----------- Help ------------
-- :help keymaps


-- ======= Base =======
local opts = { noremap = true , silent = true }  -- options
local term_opts = { silent = true } -- does not print the action
local keymap = vim.api.nvim_set_keymap -- calling of the nvim function
keymap("", "<Space>", "<Nop>", opts) -- Setting leader key
vim.g.mapleader = " "  -- global leader key 
vim.g.maplocalleader  = " " -- local leader key

-- ======= Buffers/Tabs =======
keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader><TAB>", ":bnext<cr>", opts)
keymap("n", "<TAB>", ":tabprev<cr>", opts)


-- ======= File/Window Exploring =======

-- @Telescope
keymap("n", "ff", ":Telescope find_files<cr>", opts)
keymap("n", "fg", ":Telescope grep_string<cr>", opts)

-- @NvimTree 
keymap("n", "fe", ":NvimTreeToggle<cr>", opts)
