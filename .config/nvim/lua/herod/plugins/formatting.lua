return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters = {
        html = {
          command = "prettier",
          args = {
            "--parser",
            "html", -- ✅ Explicitly specify HTML parser
            "--html-whitespace-sensitivity",
            "ignore",
            "--print-width",
            "80", -- ✅ Adjusted to encourage wrapping
            "--tab-width",
            "2",
            "--use-tabs",
            "false",
            "--end-of-line",
            "lf",
            "--prose-wrap",
            "always", -- ✅ Forces wrapping in prose content
            "--wrap-attributes",
            "force-aligned", -- ✅ Ensures attributes wrap cleanly
          },
          stdin = true,
        },
      },
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "html" }, -- ✅ Uses the improved HTML formatter
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        liquid = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
