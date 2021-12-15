-- Lualine configurtation
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'nightfly',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '🚀', right = '|'},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {

  lualine_c = {
    {
      'diagnostics',
      -- table of diagnostic sources, available sources:
      -- 'nvim_lsp', 'nvim', 'coc', 'ale', 'vim_lsp'
      -- Or a function that returns a table like
      --   {error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt}
      sources = {'nvim_diagnostic'},

      -- displays diagnostics from defined severity
      sections = {'error', 'warn', 'info', 'hint'},
      diagnostics_color = {
        -- Same values like general color option can be used here.
        error = 'DiagnosticError', -- changes diagnostic's error color
        warn  = 'DiagnosticWarn',  -- changes diagnostic's warn color
        info  = 'DiagnosticInfo',  -- Changes diagnostic's info color
        hint  = 'DiagnostcHint',  -- Changes diagnostic's hint color
      },
      symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
      colored = true, -- displays diagnostics status in color if set to true
      update_in_insert = false, -- Update diagnostics in insert mode
      always_visible = false, -- Show diagnostics even if count is 0, boolean or function returning boolean
    }
  },
  lualine_a = {'mode'},
  lualine_b = {
	{'filename',
		file_status = true,  -- displays file status (readonly status, modified status)
	    	path = 0,            -- 0 = just filename, 1 = relative path, 2 = absolute path
	    	shorting_target = 40 -- Shortens path to leave 40 space in the window
	},
	},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
  })
