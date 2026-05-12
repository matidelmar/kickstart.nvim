return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        component_separators = '|',
        section_separators = '',
        theme = 'catppuccin',
      },
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1, -- 1: Relative path
          },
        },
        lualine_x = {
          {
            function()
              return require('noice').api.status.command.get()
            end,
            cond = function()
              return package.loaded['noice'] and require('noice').api.status.command.has()
            end,
            color = { fg = '#ff9e64' },
          },
          {
            function()
              return require('noice').api.status.mode.get()
            end,
            cond = function()
              return package.loaded['noice'] and require('noice').api.status.mode.has()
            end,
            color = { fg = '#ff9e64' },
          },
          {
            function()
              return require('noice').api.status.search.get()
            end,
            cond = function()
              return package.loaded['noice'] and require('noice').api.status.search.has()
            end,
            color = { fg = '#ff9e64' },
          },
          'encoding',
          'fileformat',
          'filetype',
        },
      },
    },
  },
}
