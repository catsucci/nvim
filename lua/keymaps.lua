-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

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

-- Git -Vim Fugitive
vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>')
vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<CR>')
vim.keymap.set('n', '<leader>gp', '<cmd>Git push<CR>')

-- This is going to get me cancelled, sais prime
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndotree', remap = true })

-- Formatting keymap
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'LSP: file [F]ormat', remap = true })

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

vim.keymap.set('n', '<leader>ha', function()
  require('harpoon.mark').add_file()
end, { desc = '[A]dd file', remap = true })
vim.keymap.set('n', '<leader>ht', function()
  require('harpoon.ui').toggle_quick_menu()
end, { desc = '[T]oggle quick menu', remap = true })
vim.keymap.set('n', '<A-1>', function()
  require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<A-2>', function()
  require('harpoon.ui').nav_file(2)
end)
vim.keymap.set('n', '<A-3>', function()
  require('harpoon.ui').nav_file(3)
end)
vim.keymap.set('n', '<A-4>', function()
  require('harpoon.ui').nav_file(4)
end)
vim.keymap.set('n', '<A-5>', function()
  require('harpoon.ui').nav_file(5)
end)
vim.keymap.set('n', '<A-6>', function()
  require('harpoon.ui').nav_file(6)
end)
vim.keymap.set('n', '<A-7>', function()
  require('harpoon.ui').nav_file(7)
end)

-- spectre for find and replace across project
vim.keymap.set('n', '<leader>rs', function()
  require('spectre').open()
end, { desc = '[R]eplace in files ([S]pectre)' })

-- Redefine Emmet default trigger key
vim.g.user_emmet_leader_key = '<C-,>'
