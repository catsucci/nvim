return {
   'windwp/nvim-ts-autotag' , -- Use treesitter to auto close and auto rename html tag
   ft = {
    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
    'xml',
    'php',
    'markdown',
    'astro', 'glimmer', 'handlebars', 'hbs'
  },
  config = function ()
    require("nvim-ts-autotag").setup()
  end
}
