local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local desc = function(desc)
    local merged = opts
    merged.desc = desc
    return merged
end

map("n", "<leader>ul", "<cmd>Lazy<cr>", desc("Lazy Plugin Manager"))
map("n", "<leader>um", "<cmd>Mason<cr>", desc("Mason Manager"))

map("n", "<esc>", "<cmd>nohl<cr>", desc("Clear Highligted text"))

map("n", "<leader>wv", "<c-w>v<cr>", desc("Split Window Vertically"))
map("n", "<leader>wh", "<c-w>s<cr>", desc("Split Window Horizontally"))

map("n", "<leader>wd", "<cmd>close<cr>", desc("Close Current Window"))
map("n", "<leader>wD", "<c-w><c-o><cr>", desc("Close Other Windows"))

map(
    "n",
    "<leader>ws",
    "<cmd>exe '1wincmd w | wincmd '.(winwidth(0) == &columns ? 'H' : 'K')<CR>",
    desc("Toggle Split Layout")
)

-- Move selected line / block of text in visual mode
map("v", "J", ":m '>+1<cr>gv=gv", desc("Move Selected Down"))

map("v", "K", ":m '<-2<cr>gv=gv", desc("Move Selected Up"))

-- paste over currently selected text without yanking it
map("v", "p", '"_dp', desc("Paste Over Selected Text"))
map("v", "P", '"_dP', desc("Paste Over Selected Text"))

--- better movement in wrap mode
map("n", "j", "gj")
map("n", "k", "gk")

-- Navigate tabs
map("n", "<right>", ":tabnext<cr>", desc("Next Tab"))
map("n", "<left>", ":tabprevious<cr>", desc("Prev Tab"))

map("n", "<up>", "<cmd>echo 'Use k to move!'<cr>", desc("Arrow Key Disabled"))
map("n", "<down>", "<cmd>echo 'Use j to move!'<cr>", desc("Arrow Key Disabled"))

-- Alias to <esc>
-- map("i", "jk", "<esc>", opts)
-- map("i", "kj", "<esc>", opts)
