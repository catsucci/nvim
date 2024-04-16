return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1000,
    config = true,
  },
  {
    'nvim-neorg/neorg',
    build = ':Neorg sync-parsers',
    opts = {
      load = {
        ['core.defaults'] = {}, -- Loads default behaviour
        ['core.concealer'] = {}, -- Adds pretty icons to your documents
        ['core.dirman'] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              my_ws = '~/neorg',
              personal = '~/neorg/personal',
              default = '~/neorg/personal',
              notes = '~/neorg/notes',
              work = '~/neorg/work',
              design = '~/neorg/design',
              ideas = '~/neorg/ideas',
              learning = '~/neorg/learning',
              reference = '~/neorg/reference',
              archive = '~/neorg/archive',
              -- internships
              internship_fcpo = '~/neorg/internships/internship_fcpo',
              -- projects
              project_coc = '~/neorg/projects/project_coc',
              project_isketch = '~/neorg/projects/project_isketch',
            },
            index = 'index.norg',
          },
        },
      },
    },
  },
}
