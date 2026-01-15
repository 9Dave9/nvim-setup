-- Code Tree Support / Syntax Highlighting
-- return {
--   -- https://github.com/nvim-treesitter/nvim-treesitter
--   'nvim-treesitter/nvim-treesitter',
--   -- event = 'VeryLazy',
--   dependencies = {
--   --   -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
--     'nvim-treesitter/nvim-treesitter-textobjects',
--   },
--   build = ':TSUpdate',
--   opts = {
--     highlight = {
--       enable = true,
--     },
--     indent = { enable = true },
--     auto_install = true, -- automatically install syntax support when entering new file type buffer
--     ensure_installed = {
--       'lua',
--     },
--   },
--   config = function (_, opts)
--     local configs = require("nvim-treesitter.configs")
--     configs.setup(opts)
--   end
-- }
return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  branch = "main",
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "query", "python", "typescript", "javascript", "markdown", "json" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return
    end
    configs.setup(opts)
  end
}

