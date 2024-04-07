return {
  "dmitriy-korotayev/vim-pug",
  lazy = false,
  config = function()
    -- Workaround for pug files getting detected as something else
    vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
      pattern = "*.pug",
      callback = function()
        local function setSyntax()
          vim.cmd('set syntax=pug')
        end
        -- After 1 second, set the syntax to pug
        vim.defer_fn(setSyntax, 1000)
      end,
    })
  end,
}
