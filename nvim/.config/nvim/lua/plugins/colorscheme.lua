return {
  {
    "bettervim/yugen.nvim",
  },
  {
    "jwbaldwin/oscura.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- configuration options (see below)
    },
  },
  {
    "thigcampos/cupertino.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("oldworld").setup({
        variant = "default",
      })
    end,
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  {
    "datsfilipe/vesper.nvim",
    lazy = true,
    config = function()
      require("vesper").setup({
        transparent = false, -- Boolean: Sets the background to transparent

        italics = {
          comments = true, -- Boolean: Italicizes comments
          keywords = true, -- Boolean: Italicizes keywords
          functions = true, -- Boolean: Italicizes functions
          strings = true, -- Boolean: Italicizes strings
          variables = true, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {},
      })
    end,
  },
  {
    "datsfilipe/min-theme.nvim",
    lazy = true,
    config = function()
      require("min-theme").setup({
        -- (note: if your configuration sets vim.o.background the following option will do nothing!)
        theme = "dark", -- String: 'dark' or 'light', determines the colorscheme used
        transparent = true, -- Boolean: Sets the background to transparent
        italics = {
          comments = true, -- Boolean: Italicizes comments
          keywords = true, -- Boolean: Italicizes keywords
          functions = true, -- Boolean: Italicizes functions
          strings = true, -- Boolean: Italicizes strings
          variables = true, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
      })
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "EdenEast/nightfox.nvim" },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    lazy = true,
    config = function()
      require("catppuccin").setup({
        transparent_background = false,
        integrations = {
          alpha = true,
          cmp = true,
          flash = true,
          gitsigns = true,
          illuminate = true,
          indent_blankline = { enabled = true },
          lsp_trouble = true,
          mason = true,
          mini = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
          navic = { enabled = true, custom_bg = "lualine" },
          neotest = true,
          noice = true,
          notify = true,
          neotree = true,
          semantic_tokens = true,
          telescope = true,
          treesitter = true,
          which_key = true,
        },
      })
    end,
  },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      vim.g.zenbones_darken_comments = 45
      vim.o.background = "light"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
