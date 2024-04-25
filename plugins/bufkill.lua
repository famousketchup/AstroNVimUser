return {
  'bit101/bufkill',
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>x', ':KillBuffer<CR>')
  end,
}
