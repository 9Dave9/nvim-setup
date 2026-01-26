   -- return {
   --    'zbirenbaum/copilot.lua',
   --    cmd = 'Copilot',
   --    event = 'InsertEnter',
   --    config = true,
   -- }

   -- return {
   --   "zbirenbaum/copilot.lua",
   --   requires = {
   --     "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
   --   },
   --   cmd = "Copilot",
   --   event = "InsertEnter",
   --   config = function()
   --     require("copilot").setup({})
   --   end,
   -- }

 return {
    "Exafunction/windsurf.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        virtual_text = {
          enabled = true,
          manual = false, -- Set to true if you want to trigger completions manually
          idle_delay = 75, -- Delay before showing suggestions (in ms)
          key_bindings = {
            accept = "ee",        -- Accept current suggestion
            accept_word = "<A-Tab>", -- Accept next word (if available)
            accept_line = "<A-Enter>", -- Accept next line
            clear = "<C-]>",          -- Clear suggestions
            next = "<C-n>",           -- Cycle forward
            prev = "<C-p>",           -- Cycle backward
          }
        }
      })
    end
}
