require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })

map("n", "n", "nzzzv", { desc = "Next search result centered" })
map("n", "N", "Nzzzv", { desc = "Prev search result centered" })

map("x", "<leader>p", '"_dP', { desc = "Paste without losing clipboard" })
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<Esc>", "<cmd>noh<cr>", { desc = "Clear highlights" })

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics" })
map("n", "<leader>xq", "<cmd>Trouble quickfix toggle<cr>", { desc = "Quickfix list" })

map("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Zen mode" })
map("n", "<leader>tw", "<cmd>Twilight<cr>", { desc = "Twilight toggle" })

map("n", "<leader>sr", "<cmd>Spectre<cr>", { desc = "Search and replace" })

map("n", "<leader>qs", function() require("persistence").load() end, { desc = "Restore session" })
map("n", "<leader>ql", function() require("persistence").load { last = true } end, { desc = "Restore last session" })

map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Git diff view" })
map("n", "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", { desc = "File git history" })
map("n", "<leader>gc", "<cmd>DiffviewClose<cr>", { desc = "Close diff view" })

map("n", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Floating terminal" })
map("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=60<cr>", { desc = "Vertical terminal" })

map("n", "-", "<cmd>Oil --float<cr>", { desc = "File browser" })

map("n", "<leader>td", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Toggle diagnostics" })
map("n", "<leader>ts", "<cmd>Trouble symbols toggle<cr>", { desc = "Toggle symbols" })
