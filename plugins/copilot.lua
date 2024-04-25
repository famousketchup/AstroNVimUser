return {
  'github/copilot.vim',
  cmd = 'Copilot',
  lazy = false,
  config = function()
    vim.keymap.set('i', '<C-e>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')
    vim.g.copilot_no_tab_map = true
  end,
  -- opts = function()
  -- end,
  -- setup = function()
  -- end
}
