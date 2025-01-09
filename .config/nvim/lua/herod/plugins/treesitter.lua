return {
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/playground",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate", -- Updates parsers automatically when the plugin is built
  dependencies = {
    "windwp/nvim-ts-autotag", -- Dependency for auto-closing and renaming HTML tags
  },
  config = function()
    -- Import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- Configure Treesitter
    treesitter.setup({
      -- Enable syntax highlighting
      highlight = {
        enable = false,
      },

      -- Enable indentation
      indent = { enable = true },

      -- Enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },

      -- Ensure these language parsers are installed
      ensure_installed = {
        "java",
        "go",
        "python",
        "xml",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
      },

      -- Enable incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- Custom highlights for Tree-sitter
    vim.api.nvim_set_hl(0, "@marker.annotation", { fg = "#FFA500", italic = true }) -- Annotation markers
    vim.api.nvim_set_hl(0, "@annotation", { fg = "#FFA500", italic = true }) -- Fallback for other annotation groups

    vim.api.nvim_set_hl(0, "@modifiers", { fg = "#00FF00", bold = true })
    vim.api.nvim_set_hl(0, "@identifier", { fg = "#FF00FF", underline = true })
    vim.api.nvim_set_hl(0, "@annotation", { fg = "#FFA500", italic = true })
  end,
}
