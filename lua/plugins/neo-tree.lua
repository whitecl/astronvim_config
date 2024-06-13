---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window.mappings = {
      o = "open",
    }
    opts.filesystem.filtered_items.hide_dotfiles = false
  end,
}
