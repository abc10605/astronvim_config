return {
  opt = {
    relativenumber = false, -- sets vim.opt.relativenumber
    -- colorcolumn = "80",
    foldenable = false,
    foldexpr = "nvim_treesitter#foldexpr()", -- set Treesitter based folding
    foldmethod = "expr"
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
  },
}
