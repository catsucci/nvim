return {
  { -- Create annotations with one keybind, and jump your cursor in the inserted annotation
    'danymat/neogen',
    keys = {
      {
        '<leader>cc',
        function()
          require('neogen').generate {}
        end,
        desc = 'Neogen [C]omment',
      },
    },
    opts = { snippet_engine = 'luasnip' },
  },
  {
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    {
      -- Finds and lists all of the TODO, HACK, BUG, etc comment
      -- in your project and loads them into a browsable list.
      'folke/todo-comments.nvim',
      cmd = { 'TodoTrouble', 'TodoTelescope' },
      event = 'VimEnter',
      config = true,
      opts = { signs = false },
      -- stylua: ignore
      keys = {
        { "]t",         function() require("todo-comments").jump_next() end, desc = "Next [T]odo comment" },
        { "[t",         function() require("todo-comments").jump_prev() end, desc = "Previous [T]odo comment" },
        { "<leader>xt", "<cmd>TodoTrouble<cr>",                              desc = "[T]odo (Trouble)" },
        { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>",      desc = "[T]odo/Fix/Fixme (Trouble)" },
        { "<leader>st", "<cmd>TodoTelescope<cr>",                            desc = "[T]odo" },
        { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",    desc = "[T]odo/Fix/Fixme" },
      },
    }
  }
}
