-- Nvim configurations in the LUA
--
-- Keep on Hunting for knowledge!
--                               __
--                             .d$$b
--                           .' TO$;\
--                          /  : TP._;
--                         / _.;  :Tb|
--                        /   /   ;j$j
--                    _.-"       d$$$$
--                  .' ..       d$$$$;
--                 /  /P'      d$$$$P. |\
--                /   "      .d$$$P' |\^"l
--              .'           `T$P^"""""  :
--          ._.'      _.'                ;
--       `-.-".-'-' ._.       _.-"    .-"
--     `.-" _____  ._              .-"
--    -(.g$$$$$$$b.              .'
--      ""^^T$$$P^)            .(:
--        _/  -"  /.'         /:/;
--     ._.'-'`-'  ")/         /;/;
--  `-.-"..--""   " /         /  ;
-- .-" ..--""        -'          :
-- ..--""--.-"         (\      .-(\
--   ..--""             `-\(\/;`
--     _.                      :
--                             ;`-
--                            :\ 

-- #### Configuration files ####
require('plugins') -- For Plugins in lua (Such as Packer)
require('setup') -- Special setups on Lua
require('binds') -- Special bind on Lua
require('stl') -- Special styles on Lua
require('basic') -- Basic configurations for fast adaption

-- #### Plugin files that are used #### 
-- Add files inside of the /config folder and list them here to enable them
require('config/config-lualine') -- Lualine
require('config/config-nvim-lspconfig') -- LSP
require('config/config-telescop') -- Telescope 
require('config/config-nvim-tree') -- Nvim Tree 
