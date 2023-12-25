return function(_, opts)
  local telescope = require "telescope"
  telescope.setup(opts)
  vim.keymap.set("n", "<leader>fx", function()
    telescope.extensions.file_browser.file_browser({
      path = "%:p:h",
      cwd = telescope_buffer_dir(),
      respect_gitignore = false,
      hidden = true,
      grouped = true,
      previewer = false,
      initial_mode = "normal",
      layout_config = { height = 40 }
    })
  end)
end
