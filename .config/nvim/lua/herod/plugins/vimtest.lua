return {
  {
    "vim-test/vim-test",
    config = function()
      -- Set vim-test strategy and window position
      vim.g["test#strategy"] = "neovim"
      vim.g["test#neovim#term_position"] = "belowright"

      -- Optional: Keymaps for running tests
      vim.api.nvim_set_keymap("n", "<leader>tn", ":TestNearest<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>tf", ":TestFile<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>ts", ":TestSuite<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>tl", ":TestLast<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>tv", ":TestVisit<CR>", { noremap = true, silent = true })
    end,
  },
}
