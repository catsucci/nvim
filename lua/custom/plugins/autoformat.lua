return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
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
