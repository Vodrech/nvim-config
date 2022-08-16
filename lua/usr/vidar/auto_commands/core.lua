-- ----------- Info  -----------
-- Core util for the autocommands
-- ----------- Help ------------
-- :help au OR :help autocmd
-- Uses pcall, to catch exceptions

-- BASE
local core = {}
local baseErrMessage = "ACMD.CORE"

-- Protected call to catch errors
function core.create_command(func)
	local status_ok, err = pcall(func)
	if not status_ok then
		print(string.format(baseErrMessage .. " %s", err))
		return
	end
end

return core
