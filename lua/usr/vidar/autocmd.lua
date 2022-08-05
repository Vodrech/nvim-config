-- ----------- Info  -----------
-- This file handles all the autocommands 
-- Core: init.lua
-- ----------- Template  -----------
-- commmand("<event>", {command = "<cmd_action>", group = <group>})
-- ----------- Help ------------
-- :help au OR :help autocmd

-- ======== Base ========
local create_group = vim.api.nvim_create_augroup -- Creates a autocmd group
local create_command = vim.api.nvim_create_autocmd -- Creates a new autocmd command

-- ======== Groups ========
local group = create_group("GroupName", { clear = true })
create_command("BufEnter", { command = "echo 'Hello'", group = group, buffer = 0})
-- local group = vim.api.nvim_create_augroup("Testing", { clear = true })
-- vim.api.nvim_create_autocmd("BufEnter", {command = "echo 'Hello'", group = group, buffer = 0})
