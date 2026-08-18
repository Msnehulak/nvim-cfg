return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { 
        "c", "lua", "vim", "vimdoc", "query", 
        "javascript", "typescript", "python", "html", "css",
        "ninja", "rst" -- Volitelné: užitečné parsery pro Python ekosystém
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      -- Zapnutí modulu pro párování a zvýrazňování bloků (def, class, if...)
      indent = { enable = true },
    })
  end,
}
