-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Pretty Typescript Errors
-- Show error under cursor
vim.keymap.set("n", "<leader>te", function()
  require("pretty-ts-errors").show_formatted_error()
end, { desc = "Show TS error" })

-- Show all errors in file
vim.keymap.set("n", "<leader>tE", function()
  require("pretty-ts-errors").open_all_errors()
end, { desc = "Show all TS errors" })

-- Toggle auto-display
vim.keymap.set("n", "<leader>tt", function()
  require("pretty-ts-errors").toggle_auto_open()
end, { desc = "Toggle TS error auto-display" })

-- Oil.nvim
map("n", "-", "<cmd>Oil<cr>", { desc = "Open oil.nvim" })
map("n", "<leader>-", function()
  require("oil").toggle_float()
end, { desc = "Open parent directory in floating window" })

-- Neo-tree
map("n", "<leader>E", "<cmd>Neotree toggle buffers<cr>", { desc = "Toggle Buffers Explorer" })

-- Telescope
map("n", "<C-p>", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fa", "<cmd>Telescope live_grep_args<cr>")
map("n", "<leader>fx", "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,--glob=.env<cr>")

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":Bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Transparent
map("n", "<leader>uT", "<cmd>TransparentEnable<cr>", { desc = "Enable background transparency" })
map("n", "<leader>ut", "<cmd>TransparentToggle<cr>", { desc = "Toggle background transparency" })

-- mini.nvim
map("n", "<leader>C", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })

-- some utilities
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and Replace RegExp" })
map("n", "tn", "<cmd>tabnew<cr>")
map("n", "<leader>n", "<cmd>noh<cr>", { desc = "Remove highlighting of search matches" })

-- utilities to center the screen
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- visual
map("v", "p", '"_dP')
map("v", "<", "<gv")
map("v", ">", ">gv")

-- moving lines
map("x", "J", ":m '>+1<cr>gv=gv")
map("x", "K", ":m '<-2<cr>gv=gv")
