-- Add plugins, the packer syntax without the "use"
return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  -- You can also add new plugins here as well:
  -- { "andweeb/presence.nvim" },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" },
}
