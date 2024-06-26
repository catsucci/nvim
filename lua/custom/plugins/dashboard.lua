return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      -- shortcut_type = 'number',
      config = {

        --  enable = true,
        -- },
        header = {
          [[9ra ou zid 9ra, 7na ma3dnach m3a lkoussala]],
          [[                                          ]],
          [[Do you ever take the time to breathe everything in?]],
          [[                                          ]],
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            desc = ' Tree',
            group = 'DiagnosticHint',
            action = 'e .',
            key = 't',
          },
          {
            desc = ' dotfiles',
            group = 'Number',
            action = 'e ~/.config/nvim',
            key = 'd',
          },
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
