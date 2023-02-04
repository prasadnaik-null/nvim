-- local function for map
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- mapping leader
vim.g.mapleader = " "

-- space e to find explorer
map("n", "<leader>e", vim.cmd.NvimTreeT)
    --vim.api.nvim_set_keymap(
    --  "n",
    --  "<leader>e",
    --  ":Telescope file_browser hidden=true<CR>",
    --  { noremap = true }
    --)

-- which searching the cursor stays in middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- while pasting and replacing terms the thing copied stays coppied
map("x", "p", [["_dP]])

-- helps in switching tabs/buffers
map("n", "<Tab>`", vim.cmd.bp)
map("n", "<Tab><Tab>", vim.cmd.bn)
map("n", "<leader>s", vim.cmd.w)
map("n", "<leader>w", vim.cmd.bd)
