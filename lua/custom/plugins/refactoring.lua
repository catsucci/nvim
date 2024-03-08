return { -- Refactoring tool
  'ThePrimeagen/refactoring.nvim',
  keys = {
    {
      '<leader>r',
      function()
        require('refactoring').select_refactor()
      end,
      desc = 'refactoring',
      mode = 'v',
      noremap = true,
      silent = true,
      expr = false,
    },
  },
  opts = {},
}
