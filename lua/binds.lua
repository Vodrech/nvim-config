-- ### FUNCTIONS ###

-- GENERAL METHOD
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- NORMAL MODE
function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- INSERT MODE
function imap(shortcut, command)
  map('i', shortcut, command)
end


-- ### FUNCTION CALLING ###


-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")

-- Nvim Tree
nmap("<leader>tt", "<cmd>Ntree<cr>")
