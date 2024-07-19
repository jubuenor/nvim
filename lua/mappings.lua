require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", ";", ":", { desc = "enter command mode", nowait = true })
map("n", "<C-d>", "<C-d>zz", { desc = "scroll down" })
map("n", "<C-u>", "<C-u>zz", { desc = "scroll up" })
map("n", "n", "nzzzv", { desc = "scroll down" })
map("n", "N", "Nzzzv", { desc = "scroll up" })
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "search and replace" })

-- Visual mode keybindings

map("v", ">", "gv", { desc = "indent" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "move line up" })
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "move line down" })

-- X mode keybindings
--
map("x", "<leader>p", [[\_dP]], { desc = "paste without yanking" })

-- more keybinds!

map(
  "i",
  "<A-l>",
  "<cmd>lua vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')<CR>",
  { desc = "Copilot Accept", nowait = true, silent = true, expr = true, noremap = true }
)

map("n", "<leader>u", "<cmd> UndotreeToggle <CR>", { desc = "Toggle undotree" })
