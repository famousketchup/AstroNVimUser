return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = cmp.mapping.preset.insert(vim.tbl_deep_extend("force", opts.mapping, {
        -- ["<C-e>"] = cmp.mapping.confirm({ select = true }),
      }))
      return opts
    end,
  }
}
