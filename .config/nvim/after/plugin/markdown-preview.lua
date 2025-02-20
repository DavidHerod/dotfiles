-- Set to 1, nvim will open the preview window after entering the Markdown buffer
-- default: 0
vim.g.mkdp_auto_start = 1

-- Set to 1, nvim will auto close current preview window when changing
-- from Markdown buffer to another buffer
-- default: 1
vim.g.mkdp_auto_close = 1

-- Set to 1, Vim will refresh Markdown when saving the buffer or
-- when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or move the cursor
-- default: 0
vim.g.mkdp_refresh_slow = 0

-- Set to 1, the MarkdownPreview command can be used for all files,
-- by default it can be used in Markdown files only
-- default: 0
vim.g.mkdp_command_for_global = 0

-- Set to 1, the preview server is available to others in your network.
-- By default, the server listens on localhost (127.0.0.1)
-- default: 0
vim.g.mkdp_open_to_the_world = 0

-- Use custom IP to open preview page.
-- Useful when working in remote Vim and previewing on local browser.
-- default: ''
vim.g.mkdp_open_ip = ""

-- Specify browser to open preview page
-- default: ''
vim.g.mkdp_browser = ""

-- Set to 1, echo preview page URL in command line when opening preview page
-- default: 0
vim.g.mkdp_echo_preview_url = 0

-- A custom Vim function name to open preview page
-- This function will receive URL as a param
-- default: ''
vim.g.mkdp_browserfunc = ""

-- Options for Markdown rendering
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {},
  uml = {},
  maid = {},
  disable_sync_scroll = 0,
  sync_scroll_type = "middle",
  hide_yaml_meta = 1,
  sequence_diagrams = {},
  flowchart_diagrams = {},
  content_editable = false,
  disable_filename = 0,
  toc = {},
}

-- Use a custom Markdown style. Must be an absolute path
-- default: ''
vim.g.mkdp_markdown_css = ""

-- Use a custom highlight style. Must be an absolute path
-- default: ''
vim.g.mkdp_highlight_css = ""

-- Use a custom port to start server or empty for random
-- default: ''
vim.g.mkdp_port = ""

-- Preview page title
-- ${name} will be replaced with the file name
vim.g.mkdp_page_title = "「${name}」"

-- Use a custom location for images
vim.g.mkdp_images_path = "/home/user/.markdown_images"

-- Recognized filetypes
-- These filetypes will have MarkdownPreview... commands
vim.g.mkdp_filetypes = { "markdown" }

-- Set default theme (dark or light)
-- By default, the theme is defined according to system preferences
vim.g.mkdp_theme = "dark"

-- Combine preview window
-- default: 0
-- If enabled, it will reuse the previously opened preview window when you preview a markdown file.
-- Ensure to set vim.g.mkdp_auto_close = 0 if you enable this option
vim.g.mkdp_combine_preview = 0

-- Auto refetch combine preview contents when changing markdown buffer
-- Only when vim.g.mkdp_combine_preview is set to 1
vim.g.mkdp_combine_preview_auto_refresh = 1
