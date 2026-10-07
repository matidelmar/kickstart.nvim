return {
  'folke/zen-mode.nvim',
  cmd = 'ZenMode',
  keys = {
    { '<leader>z', '<cmd>ZenMode<cr>', desc = 'Toggle [Z]en mode' },
  },
  ---@module 'zen-mode'
  ---@type table
  opts = {
    window = {
      backdrop = 0.95, -- shade the backdrop of non-Zen windows (1 = normal background)
      width = 120, -- width of the Zen window
      height = 1, -- height: 1 = full height
      options = {
        signcolumn = 'no',
      },
    },
    plugins = {
      gitsigns = { enabled = false },
      tmux = { enabled = false },
    },
  },
}
