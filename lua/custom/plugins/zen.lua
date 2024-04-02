return {
  {
    'folke/zen-mode.nvim',
    config = function()
      vim.keymap.set('n', '<leader>tz', function()
        require('zen-mode').setup {
          window = {
            width = 90,
            options = {},
          },
        }
        require('zen-mode').toggle()
        vim.wo.wrap = false
        vim.wo.number = true
        vim.wo.rnu = true
      end, {
        desc = '[T]oggle [Z]en mode',
        remap = true,
      })

      vim.keymap.set('n', '<leader>tZ', function()
        require('zen-mode').setup {
          window = {
            width = 80,
            options = {},
          },
        }
        require('zen-mode').toggle()
        vim.wo.wrap = false
        vim.wo.number = false
        vim.wo.rnu = false
        vim.opt.colorcolumn = '0'
      end, {
        desc = '[T]oggle the [Z]en mode',
        remap = true,
      })
    end,
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
