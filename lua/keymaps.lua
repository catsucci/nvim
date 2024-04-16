-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Opens the Explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[V]im Ex[P]lorer', remap = true })

-- send the char to the void reg
vim.keymap.set('n', 'x', '"_x')

-- Moving elements around
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Center buffer while navigating
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '{', '{zz')
vim.keymap.set('n', '}', '}zz')
vim.keymap.set('n', 'G', 'Gzz')
vim.keymap.set('n', 'gg', 'ggzz')
vim.keymap.set('n', '%', '%zz')
vim.keymap.set('n', '*', '*zz')
vim.keymap.set('n', '#', '#zz')
vim.keymap.set('n', '<C-o>', '<C-o>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-i>', '<C-i>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Past without losing yank', remap = true })

-- next greatest remap ever
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = '[Y]ank to clipboard', remap = true })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = '[Y]ank to clipboard', remap = true })

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete into the void register', remap = true })

-- Git
vim.keymap.set('n', '<leader>gs', vim.cmd.Neogit, { desc = '[G]it [S]tatus', silent = true })
vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true })
vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true })
vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true })
vim.keymap.set('n', '<Leader>gb', ':Telescope git_branches<CR>', { silent = true })
vim.keymap.set('n', '<leader>gB', ':G blame<CR>', { silent = true })
vim.keymap.set('n', '<leader>gdo', ':DiffviewOpen<CR>', { silent = true })
vim.keymap.set('n', '<leader>gdc', ':DiffviewClose<CR>', { silent = true })
vim.keymap.set('n', '<leader>gdtf', ':DiffviewToggleFiles<CR>', { silent = true })

-- Neorg
vim.keymap.set('n', '<leader>nm', ':Neorg workspace my_ws<CR>', { silent = true })
vim.keymap.set('n', '<leader>np', ':Neorg workspace personal<CR>', { silent = true })
vim.keymap.set('n', '<leader>nn', ':Neorg workspace notes<CR>', { silent = true })
vim.keymap.set('n', '<leader>nw', ':Neorg workspace work<CR>', { silent = true })
vim.keymap.set('n', '<leader>nd', ':Neorg workspace design<CR>', { silent = true })
vim.keymap.set('n', '<leader>ni', ':Neorg workspace ideas<CR>', { silent = true })
vim.keymap.set('n', '<leader>nl', ':Neorg workspace learning<CR>', { silent = true })
vim.keymap.set('n', '<leader>nr', ':Neorg workspace reference<CR>', { silent = true })
vim.keymap.set('n', '<leader>na', ':Neorg workspace archive<CR>', { silent = true })
-- internships
vim.keymap.set('n', '<leader>nIf', ':Neorg workspace internship_fcpo<CR>', { silent = true })
-- projects
vim.keymap.set('n', '<leader>nPc', ':Neorg workspace project_coc<CR>', { silent = true })
vim.keymap.set('n', '<leader>nPi', ':Neorg workspace project_isketch<CR>', { silent = true })

-- This is going to get me cancelled, sais prime
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndotree', remap = true })

-- Formatting keymap -Switched to using Conform plugin-
-- vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'LSP: file [F]ormat', remap = true })

-- Renaming with ThePrimeagen's way
vim.keymap.set(
  'n',
  '<leader>rp',
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = 'The[P]rimeagen [R]eplace', remap = true }
)

-- Tmux sessionizer script
vim.keymap.set('n', '<C-f>', '<cmd>silent ! tmux neww ~/.scripts/tmux.sessionizer.sh<CR>')

-- Harpoon keymaps

vim.keymap.set('n', '<leader>pa', function()
  require('harpoon.mark').add_file()
end, { desc = '[A]dd file', remap = true })
vim.keymap.set('n', '<leader>ph', function()
  require('harpoon.ui').toggle_quick_menu()
end, { desc = 'Toggle quick menu', remap = true })
vim.keymap.set('n', '<leader>p1', function()
  require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<leader>p2', function()
  require('harpoon.ui').nav_file(2)
end)
vim.keymap.set('n', '<leader>p3', function()
  require('harpoon.ui').nav_file(3)
end)
vim.keymap.set('n', '<leader>p4', function()
  require('harpoon.ui').nav_file(4)
end)
vim.keymap.set('n', '<leader>p5', function()
  require('harpoon.ui').nav_file(5)
end)
vim.keymap.set('n', '<leader>p6', function()
  require('harpoon.ui').nav_file(6)
end)
vim.keymap.set('n', '<leader>p7', function()
  require('harpoon.ui').nav_file(7)
end)

-- spectre for find and replace across project
vim.keymap.set('n', '<leader>rs', function()
  require('spectre').open()
end, { desc = '[R]eplace in files ([S]pectre)' })

-- Replace HEX colors with HSL
vim.keymap.set('n', '<leader>R', function()
  require('custom.utils.hex-to-hsl').replaceHexWithHSL()
end,
{ desc ="Replace HEX color with HSLA"})

-- Redefine Emmet default trigger key
vim.g.user_emmet_leader_key = '<C-,>'

-- Define a Lua function to create a small terminal at the bottom of the screen
function small_terminal()
  vim.cmd 'new'
  vim.cmd 'wincmd J'
  vim.api.nvim_win_set_height(0, 12)
  vim.cmd 'set winfixheight'
  vim.cmd 'term'
  vim.cmd 'set nonumber'
  vim.cmd 'set nornu'
end

-- Create a key mapping for the small_terminal function
vim.keymap.set('n', '<c-/>', ':lua small_terminal()<CR>', { noremap = true, silent = true })

-- Toggle display of LSP diagnostics
local diagnostic_visible = true
function toggle_lsp_diagnostics()
  diagnostic_visible = not diagnostic_visible
  vim.diagnostic.config {
    virtual_text = diagnostic_visible,
    signs = diagnostic_visible,
    underline = diagnostic_visible,
  }
end

-- Set up key mapping to toggle diagnostics
vim.keymap.set(
  'n',
  '<leader>tD',
  ':lua toggle_lsp_diagnostics()<CR>',
  { desc = '[T]oggle [D]iagnostic ', silent = true }
)
