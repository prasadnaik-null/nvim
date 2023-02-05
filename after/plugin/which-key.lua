local wk = require('which-key')

wk.register({
    -- telescope
    ['<leader>'] = {
        f = {
            name = 'telescope',
            f = { '<CMD>Telescope find_files<CR>', 'Find File' },
            g = { '<CMD>Telescope live_grep<CR>', 'Live Grep' },
            r = { '<CMD>Telescope oldfiles<CR>', 'Open Recent Files' },
            b = { '<CMD>Telescope file_browser hidden=true<CR>', 'File Browser' }
        },
        u = { '<CMD>UndotreeToggle<CR>', 'Open Undo Tree' },
        s = { '<CMD>w<CR>', 'Save' },
        w = { '<CMD>bd<CR>', 'Kill Buffer' },
        e = { '<CMD>NvimTreeT<CR>', 'Toggle Nvim Tree' },
        h = {
            name = 'harpoon',
            a = { '<CMD>lua require("harpoon.mark").add_file()<CR>', 'Add File' },
            q = { '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>', 'Open Quick Menu' },
            n = { '<CMD>lua require("harpoon.ui").nav_next()<CR>', 'Next File' },
            p = { '<CMD>lua require("harpoon.ui").nav_prev()<CR>', 'Previous File' },
        },
        t = { '<CMD>lua require("harpoon.term").gotoTerminal(1)<CR>', 'Open Terminal' },
    },
    ['<TAB>'] = {
        ['<TAB>'] = { '<CMD>bp<CR>', 'Previous Tab' },
        ['`'] = { '<CMD>bn<CR>', 'Net Tab' },
    },
})

require("which-key").setup{}
