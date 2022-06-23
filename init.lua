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
-- Global Configs
require("global")

-- User Configs
user = string.match(os.getenv("USER"), "(%w+)%.") -- Seperates the . on the user
userFolder = "usr"
configPath = userFolder .. "." .. user .. "."-- The dot is for path seperation

-- Config files
require(configPath.. "options")
require(configPath .. "keymaps")
require(configPath .. "plugins")
require(configPath .. "theme")
-- require(configPath .. "cmp")


-- require('plugins') -- For Plugins in lua (Such as Packer)
-- require('setup') -- Special setups on Lua
-- require('binds') -- Special bind on Lua
-- require('stl') -- Special styles on Lua
-- require('basic') -- Basic configurations for fast adaption

