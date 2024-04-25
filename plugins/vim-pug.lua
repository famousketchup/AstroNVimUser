return {
  'digitaltoad/vim-pug',
  lazy = false,
  config = function()
    -- Workaround for pug files getting detected as something else
    -- Set the filetype to pug after 2 seconds
    vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
      pattern = '*.pug',
      callback = function()
        local function setSyntax()
          vim.cmd('set syntax=pug')
          vim.cmd('set filetype=pug')
        end
        -- After 1 second, set the syntax to pug
        vim.defer_fn(setSyntax, 2000)
      end,
    })

    -- Set foldmethod to indent for pug files
    vim.cmd('autocmd FileType pug setlocal foldmethod=indent')
    vim.cmd('autocmd FileType pug setlocal foldlevel=99')
    vim.cmd('autocmd FileType pug setlocal ts=2 sts=2 sw=2')
    vim.cmd('autocmd FileType pug setlocal sts=2')
    vim.cmd('autocmd FileType pug setlocal sw=2')
  end,
}
