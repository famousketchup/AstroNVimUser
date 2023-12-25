return function(_, _)
  vim.g.neoformat_enabled_python = ['black', 'yapf']
  vim.g.neoformat_cpp_clangformat = {
    exe = 'clang-format',
    args = [ '--style="{IndentWidth: 4}"' ]
  }
  vim.g.neoformat_c_clangformat = {
    exe = 'clang-format',
    args = [ '--style="{IndentWidth: 4}"' ]
  }

  vim.g.neoformat_enabled_cpp = ['clangformat']
  vim.g.neoformat_enabled_c = ['clangformat']
end
