return {
  {
    'johnfrankmorgan/whitespace.nvim',
    config = function()
      require('whitespace-nvim').setup({
        -- which highlight is used to display trailing whitespace
        highlight = 'DiffDelete',
        ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help' },
        -- `ignore_terminal` configures whether to ignore terminal buffers
        ignore_terminal = true,
      })
    end
  }
}
