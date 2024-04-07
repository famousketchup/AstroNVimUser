return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- @type lspconfig.options
      servers = {
        intelephense = {
          filetypes = { "php", "blade", "pug" },
          settings = {
            intelephense = {
              filetypes = { "php", "blade", "pug" },
              files = {
                associations = { "*.php", "*.blade.php", "*.blade.pug" }, -- Associating .blade.php files as well
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
}
