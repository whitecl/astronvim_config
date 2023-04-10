-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<leader>v"]  = { ":vsplit<CR>", desc = "VSplit" },
    ["<C-p>"]      = { "<cmd>Telescope find_files<cr>", desc = "Telescope: Find file by name" },
    ["<leader>tj"] = { "<cmd>TermExec cmd='yarn jest %' size=80 direction=vertical<cr>", desc =
    "Run Jest for Current File" },
    ["<leader>tr"] = { "<cmd>TermExec cmd='bundle exec rspec %' size=80 direction=vertical<cr>", desc =
    "Run RSpec for Current File" },
    ["<leader>te"] = { "<cmd>TermExec cmd='mix test %' size=80 direction=vertical<cr>", desc =
    "Run Mix Test for Current File" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"]  = { name = "Buffers" },
    -- quick save
    ["L"]          = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
    "Next buffer" },
    ["H"]          = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
