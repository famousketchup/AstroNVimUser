-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    relativenumber = false, -- use proper line numbers
    spell = true, -- use spell-checking
    wrap = true, -- wrap too long lines
    textwidth = 72, -- max line lemgth
    formatoptions = 'cqj', -- don't move text onto new line automatically
    scrolloff = 3, -- minimal number of lines above the cursor
    colorcolumn = '+1', -- highlight column after 'textwidth'
    --foldmethod = 'marker', -- fold by pre-set markers
    --foldlevelstart = 0, -- Close all folds on file open
    showmatch = true, -- highlight matching bracket
    shiftround = true, -- Round indentation, disallow extra spaces
    tabstop = 2,
    softtabstop = 2, -- number of spaces for <tab> in insert mode
    shiftwidth = 2,
    completeopt = { "menu", "menuone", "preview" }, -- options for insert mode
    dict = '/usr/share/dict/words', -- Word dictionary for completion
    spellfile = '~/.config/nvim/en.utf-8.add', -- Custom word spelling file
    wildmode = { "longest", "list", "full" },
    wildignore = {
      ".hg", ".git", ".svn",
      "lib",
      "node_modules", "bower_components", "build",
      "*.jpg", "*.exe", "*.dll", "*.manifest",
      "*.spl", "*.sw?", "*.pyc", "*.luac",
      "*.DS_Store", "*.orig"
    },
    backupcopy = "yes",
    undofile = true, -- enable undo file
    backup = false, -- enable backups
    --backupdir = '~/.local/state/nvim/backup//', -- don't save just near the file, you boofoonous
  },
  g = {
    --mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
