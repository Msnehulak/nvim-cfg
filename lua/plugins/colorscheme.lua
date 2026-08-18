return {
  { "folke/tokyonight.nvim" },
  { 
    "catppuccin/nvim", 
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          semantic_tokens = true, -- Aktivuje bohaté barvy z LSP
        },
      },
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}
