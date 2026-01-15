return {
  -- "9Dave9/molkai-colorscheme.nvim",
  dir = "~/molokai",
  lazy = false,
  priority = 1000,
  config = function()
    require("molokai").setup({
      -- Use original monokai background color (default: false)
      original = false,
    })
    -- vim.cmd.colorscheme("molokai")
  end,
}
-- {
--   "9Dave9/molkai-colorscheme.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("molokai").setup({
--       -- Use original monokai background color (default: false)
--       original = false,
--     })
--     vim.cmd.colorscheme("molokai")
--   end,
-- }
