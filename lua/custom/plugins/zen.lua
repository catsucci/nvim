return {
  {
    'folke/zen-mode.nvim',
    cmd = 'ZenMode',
    opts = {
      window = {
        backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        -- height and width can be:
        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        -- * a function that returns the width or the height
        width = 120, -- width of the Zen window
        height = 1, -- height of the Zen window
        -- by default, no options are changed for the Zen window
        -- uncomment any of the options below, or add other vim.wo options you want to apply
        options = {
          -- signcolumn = "no", -- disable signcolumn
          number = false, -- disable number column
          relativenumber = false, -- disable relative numbers
          -- cursorline = false, -- disable cursorline
          -- cursorcolumn = false, -- disable cursor column
          -- foldcolumn = "0", -- disable fold column
          -- list = false, -- disable whitespace characters
        },
      },
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = '+2' },
      },
    },
    keys = { { '<leader>tz', '<cmd>ZenMode<cr>', desc = 'Zen Mode' } },
  },
  {
    -- Lua
    {
      'folke/twilight.nvim',
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- vim.keymap.set('n', '<leader>tw', ':Twilight<cr>'),
        vim.keymap.set('n', '<leader>tw', vim.cmd.Twilight, { desc = '[T]oggle T[W]ilight', remap = true }),
      },
    },
  },
}
