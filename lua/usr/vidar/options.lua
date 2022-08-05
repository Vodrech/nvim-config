-- :help options

local path = os.getenv("PWD")

local function declare_options ()

	-- TODO: find out what this does
	vim.opt.shortmess:append "c"
	
	-- List of options
	local options = {
		mouse = "a",
		cursorline = true,
		termguicolors = true,
		guifont = "monospace:h17", -- enables the emojis
		number = true, -- enables row number
		list = true,
		listchars = "eol:↓,space:·,trail:●,tab:→⇥⇥,extends:>,precedes:<",
		relativenumber = true
	}
	
	-- Loop the option values/keys
	for k, v in pairs(options) do
		vim.opt[k] = v
	end
end
 
declare_options() -- remove this if don't want to run
