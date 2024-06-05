return {
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-web-devicons' },
    event = 'VeryLazy',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = { left = '', right = '' },
        -- component_separators = { left = '', right = '' }
      },
    },
  },
}
