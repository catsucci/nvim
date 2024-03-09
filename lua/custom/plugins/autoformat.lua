return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    -- Uncomment if you want to have format on save
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    -- },
    lsp_fallback = true,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { { 'prettierd', 'prettier' } },
      css = { { 'prettierd', 'prettier' } },
      cpp = { 'clang-format' },
      kotlin = { 'ktlint' },
      -- run the command clang-format -style=GNU -dump-config > .clang-format
      -- to generate a new .clang-format file in the root of your cpp directory
    },
    vim.keymap.set({ 'n', 'v' }, '<leader>cl', function()
      require('conform').format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      }
    end, { desc = 'Format file or range (in visual mode)' }),
  },
}
