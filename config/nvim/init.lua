-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set nerd font
vim.g.have_nerd_font = true

vim.o.spelllang = "en_gb"

vim.opt.number = true -- Add line numbers
vim.opt.colorcolumn = "81" -- Make it obvious where 80 characters is
vim.opt.numberwidth = 5 -- Set column width for line numbers
vim.opt.splitbelow = true -- Horizontal splits open at the bottom
vim.opt.splitright = true -- Vertical splits open to the right
vim.opt.list = true -- Handle how we display whitespace characters
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- Handle how we handle whitespace characters

vim.opt.backspace = "start,eol,indent" -- Backspace deletes like most programs in insert mode
vim.opt.backup = false -- Prevent backups from being written
vim.opt.writebackup = false -- Prevent temp backups while files are being written
vim.opt.swapfile = false -- Disable swapfile from being used/created
vim.opt.history = 50 -- Set how many commands are stored in history
vim.opt.ruler = true -- Show line and column
vim.opt.incsearch = true -- Perform incremental searching
vim.opt.spelllang = "en_gb" -- set language of spellchecker

-- Softtabs, 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Quicker window movement
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Prevent the use of arrow keys
vim.keymap.set("n", "<left>", '<cmd>echo "Use h"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j"<CR>')

-- Test file key mappings
vim.keymap.set("n", "<leader>t", ":TestFile<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>s", ":TestNearest<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", ":TestLast<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gt", ":TestVisit<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader><leader>", "<c-^>", { noremap = true }) -- switch between the last two files
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Clear highlights on search when pressing <Esc>
vim.keymap.set({ "n", "v" }, "<C-_><C-_>", "gcc", { remap = true }) -- Toggle comments using
vim.keymap.set({ "n", "v" }, "<leader>", '"+y', { noremap = true }) -- Yank to + register (system clipboard)

require("config.lazy")
require("config.telescope")
require("config.lsp")
require("config.autocomplete")
