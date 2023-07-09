return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
      "iamcco/markdown-preview.nvim",
      run = function()
          vim.fn["mkdp#util#install"]()
      end,
  },
  {
     "catppuccin/nvim",
      name = "catppuccin",
      config = function()
          require("catppuccin").setup {}
      end,
  },
}
