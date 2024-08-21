-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "elixir",
      "javascript",
      "ruby",
      "typescript",
      "diff",
      "git_rebase",
    })

    -- https://github.com/nvim-treesitter/nvim-treesitter/issues/3363#issuecomment-2115177169
    opts.indent = {
      enable = true,
      disable = { "ruby " },
    }
  end,
}
