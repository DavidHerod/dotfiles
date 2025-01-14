return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters.eslint_d = {
      name = "eslint_d",
      cmd = "eslint_d",
      args = {
        "--config",
        vim.fn.expand("$HOME/.eslint.config.js"),
        "--stdin",
        "--stdin-filename",
        "%:p",
        "--format",
        "json",
      },
      stream = "stdout",
      ignore_exitcode = true,
      parser = function(output, bufnr)
        local decoded = vim.json.decode(output)
        local diagnostics = {}

        if decoded and decoded[1] and decoded[1].messages then
          for _, message in ipairs(decoded[1].messages) do
            table.insert(diagnostics, {
              lnum = message.line - 1,
              col = message.column - 1,
              end_lnum = (message.endLine and message.endLine - 1) or nil,
              end_col = (message.endColumn and message.endColumn - 1) or nil,
              severity = (message.severity == 2) and vim.diagnostic.severity.ERROR or vim.diagnostic.severity.WARN,
              message = message.message,
              source = "eslint",
            })
          end
        end

        return diagnostics
      end,
    }

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      svelte = { "eslint_d" },
      python = { "pylint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
