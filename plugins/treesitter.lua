return {
  "nvim-treesitter/nvim-treesitter",
  init = function(plugin)
    -- py: Textual css files
    vim.treesitter.language.register('css', 'tcss')
  end,
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(
      opts.ensure_installed,
      {
        "lua",
        "css",
        "tsx",
        "php",
        "json",
        "yaml",
        "css",
        "html"
      }
    )
  end,
}
