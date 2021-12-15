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

-- #### Plugins that are used #### 
require('config/config-lualine') -- Configuration file for LuaLine
require('config/config-nvim-lspconfig') -- Configuration for LSP
