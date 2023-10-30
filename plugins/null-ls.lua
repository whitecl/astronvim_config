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
      null_ls.builtins.diagnostics.rubocop.with({
        command = "bundle",
        args = { "exec", "rubocop", "-f", "json", "--stdin", "$FILENAME" }
      }),
      null_ls.builtins.formatting.rubocop.with({
        command = "bundle",
        args = {"exec", "rubocop", "--auto-correct", "-f", "quiet", "--stderr", "--stdin", "$FILENAME" }
      }),
    }
    return config -- return final config table
  end,
}
