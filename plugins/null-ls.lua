return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.diagnostics.eslint_d.with({
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
      }),
      null_ls.builtins.formatting.prettier.with({
        filetypes = { "html", "json", "yaml", "markdown", "typescript", "typescriptreact", "javascript",
          "javascriptreact" }
      }),
      null_ls.builtins.diagnostics.standardrb.with({
        filetypes = { "ruby" }
      }),
      null_ls.builtins.formatting.standardrb.with({
        filetypes = { "ruby" }
      }),
    }
    return config -- return final config table
  end,
}
