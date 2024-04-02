return {
  { -- The greatest git plugin
    'tpope/vim-fugitive',
  },
  {
    {
      'NeogitOrg/neogit',
      dependencies = {
        'nvim-lua/plenary.nvim', -- required
        'sindrets/diffview.nvim', -- optional - Diff integration

        -- Only one of these is needed, not both.
        'nvim-telescope/telescope.nvim', -- optional
        'ibhagwan/fzf-lua', -- optional
      },
      config = true,
    },
  },

  { -- See `:help gitsigns` to understand what the configuration keys do
    'lewis6991/gitsigns.nvim',
    event = 'VimEnter',
    opts = {
      signs = {
        add = { hl = 'GitSignsAdd', text = '│', numhl = 'GitSignsAddNr' },
        change = { hl = 'GitSignsChange', text = '│', numhl = 'GitSignsChangeNr' },
        delete = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr' },
        topdelete = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr' },
        changedelete = { hl = 'GitSignsDelete', text = '~', numhl = 'GitSignsChangeNr' },
      },
      on_attach = function(bufnr)
        -- Include essential gitsigns keymaps, for more see gitsigns README:
        -- https://github.com/lewis6991/gitsigns.nvim
        local gs = package.loaded.gitsigns
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end
        -- Navigation
        map({ 'n', 'v' }, ']c', gs.next_hunk, { desc = 'Jump to next git [c]hange' })
        map({ 'n', 'v' }, '[c', gs.prev_hunk, { desc = 'Jump to previous git [c]hange' })
        -- Actions
        -- visual mode
        map('v', '<leader>hs', function()
          gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'stage git hunk' })
        map('v', '<leader>hr', function()
          gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'reset git hunk' })
        -- normal mode
        map('n', '<leader>hs', gs.stage_hunk, { desc = 'git [s]tage hunk' })
        map('n', '<leader>hr', gs.reset_hunk, { desc = 'git [r]eset hunk' })
        map('n', '<leader>hS', gs.stage_buffer, { desc = 'git [S]tage buffer' })
        map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'git [u]ndo stage hunk' })
        map('n', '<leader>hR', gs.reset_buffer, { desc = 'git [R]eset buffer' })
        map('n', '<leader>hp', gs.preview_hunk, { desc = 'git [p]review hunk' })
        map('n', '<leader>hb', function()
          gs.blame_line { full = false }
        end, { desc = 'git [b]lame line' })
        map('n', '<leader>hd', gs.diffthis, { desc = 'git [d]iff against index' })
        map('n', '<leader>hD', function()
          gs.diffthis '@'
        end, { desc = 'git [D]iff against last commit' })
        -- Toggles
        map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = '[T]oggle git show [b]lame line' })
        map('n', '<leader>td', gs.toggle_deleted, { desc = '[T]oggle git show [d]eleted' })
      end,
    },
  },
}
