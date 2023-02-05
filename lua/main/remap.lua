-- ## ALL MY REMAPS

-- local function for map
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- mapping leader
vim.g.mapleader = ' '

-- telescope
local telescope = require('telescope.builtin')
map('n', '<leader>ff', telescope.find_files) -- find files in pwd
map('n', '<leader>fg', telescope.live_grep) -- find specific word in pwd
map('n', '<leader>fb', ':Telescope file_browser hidden=true<CR>') -- telescope file browser

-- undotree
map('n', '<leader>u', vim.cmd.UndotreeToggle)

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

-- nvim-tree
map("n", "<leader>e", vim.cmd.NvimTreeT)
