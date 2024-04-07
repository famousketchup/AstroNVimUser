return {
  "github/copilot.vim",
  cmd = "Copilot",
  lazy = false,
  opts = function()
    vim.keymap.set('i', '<C-e>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    -- vim.g.copilot_no_tab_map = true
  end,
  config = function()
  end,
  setup = function()
  end
}
