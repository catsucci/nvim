return {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_x = {
          {
            -- Your custom mode component or configuration
            -- For example:
            -- require('noice').api.statusline.mode.get,
            -- cond = require('noice').api.statusline.mode.has,
            color = { fg = '#ff9e64' },
          },
        },
        lualine_a = {
          'buffers',
        },
      },
    })
  end,
}

