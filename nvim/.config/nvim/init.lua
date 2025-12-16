-- bootstrap lazy.nvim, LazyVim and your plugins
vim.o.termguicolors = true

vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})

require("config.lazy")
