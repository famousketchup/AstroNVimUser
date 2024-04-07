-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {

    -- ### Simple personal defaults

    -- No-semicolon colons!!!
    [";"] = {":"},
    -- No annoying help popups
    ["<F1>"] = {"<nop>"},

    -- Select the contents of the current line, excluding indentation.
    ["vv"] = {"^vg"},

    --Fix linewise visual selection of various text objects
    ["VV"]  = {"V"},
    ["Vit"] = {"vitVkoj"},
    ["Vat"] = {"vatV"},
    ["Vab"] = {"vabV"},
    ["VaB"] = {"vaBV"},

    -- Select entire buffer
    ["vaa"] = {"ggvGg_"},
    ["Vaa"] = {"ggVG"},

    -- Delete until the end of line
    ["D"] = {"d$"},

    -- Split line
    ["S"] = {"i<cr><esc>"},
    
    -- Keep the cursor in place while joining lines
    ["J"] = {"mzJ`z"},
    
    -- Create Blank Newlines and stay in Normal mode
    ["zj"] = {"o<Esc>"},
    ["zk"] = {"O<Esc>"},
    
    -- <a-j> and <a-k> to drag lines in any mode
    ["<a-j>"] = {":m+<CR>"},
    ["<a-k>"] = {":m-2<CR>"},

    -- Paste mode
    ["<leader>y"] = {'"+y'},
    ["<leader>p"] = {':set paste<CR>"+p<CR>:set nopaste<CR>'},
    ["<leader>P"] = {':set paste<CR>"+P<CR>:set nopaste<CR>'},

    -- MY Favorite Window Mapping
    [","] = {"<c-w>"},

    
    -- *OTHER* --
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    
    -- Plugin: LeaderF
    ['<leader>ff'] = {':<C-U>Leaderf file --popup<CR>'},
    ['<leader>fg'] = {':<C-U>Leaderf rg --no-messages --popup<CR>'},
    ['<leader>fh'] = {':<C-U>Leaderf help --popup<CR>'},
    ['<leader>ft'] = {':<C-U>Leaderf bufTag --popup<CR>'},
    ['<leader>fb'] = {':<C-U>Leaderf buffer --popup<CR>'},
    ['<leader>fr'] = {':<C-U>Leaderf mru --popup --absolute-path<CR>'},

    -- Plugin: whitespace
    ['<leader>rw'] = {
      function()
        require('whitespace-nvim').trim()
      end,
    },

    ['<leader>sl'] = {':lua require("luasnip.extras.snippet_list").open()<CR>'},
    -- Plugin: Copilot
    ["<leader>=s"] = {':Copilot status'},
    ["<leader>=e"] = {':Copilot enable'},
    ["<leader>=d"] = {':Copilot disable'},
    ["<leader>=p"] = {':Copilot panel'}, -- most important
    ["<leader>=v"] = {':Copilot version'}
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  
  v = {
    -- No-semicolon colons!!!
    [";"] = {":"},
    -- No annoying help popups
    ["<F1>"] = {"<nop>"},

    -- "u" in visual mode accidentally to "y". Use "gu".
    ["u"] = {"<nop>"},
    ["gu"] = {"u"},
  }
}


-- ### IDEAS ###


-- keymap.set("n", "<leader>sv", function()
--   vim.cmd([[
--       update $MYVIMRC
--       source $MYVIMRC
--     ]])
--   vim.notify("Nvim config successfully reloaded!", vim.log.levels.INFO, { title = "nvim-config" })
-- end, {
--   silent = true,
--   desc = "reload init.lua",
-- })

-- -- Reselect the text that has just been pasted, see also https://stackoverflow.com/a/4317090/6064933.
-- keymap.set("n", "<leader>v", "printf('`[%s`]', getregtype()[0])", {
--   expr = true,
--   desc = "reselect last pasted area",
-- })


-- -- Toggle spell checking
-- keymap.set("n", "<F11>", "<cmd>set spell!<cr>", { desc = "toggle spell" })
-- keymap.set("i", "<F11>", "<c-o><cmd>set spell!<cr>", { desc = "toggle spell" })

-- -- Remove trailing whitespace characters
-- keymap.set("n", "<leader><space>", "<cmd>StripTrailingWhitespace<cr>", { desc = "remove trailing space" })






-- ## TRASH ##

-- second key is the lefthand side of the map

-- navigate buffer tabs with `H` and `L`
-- L = {
--   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
--   desc = "Next buffer",
-- },
-- H = {
--   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
--   desc = "Previous buffer",
-- },

-- mappings seen under group name "Buffer"

-- quick save
-- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
