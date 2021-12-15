## This file describes the configurations that should be made


## Packer configurations

Run these commands if you are going to change anything within the packer aspect or plugin.lua file

-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
:PackerSync

-- Loads opt plugin immediately
:PackerLoad completion-nvim ale


## File/Folder Description

### Folder

config --> Special configurations for the plugins
       |--> config-{plugin_name}.lua


### Files
plugin.lua --> Handles the installed plugins, special settings are inside the config folder
binds.lua --> Handles the bindings.
