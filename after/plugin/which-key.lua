local wk = require('which-key')

wk.register({
    ['<leader>'] = {
        -- telescope
        ['<leader>'] = { '<CMD>Telescope find_files<CR>', 'Find File' },
        f = {
            name = 'telescope',
            f = { '<CMD>Telescope find_files<CR>', 'Find File' },
            g = { '<CMD>Telescope live_grep<CR>', 'Live Grep' },
            r = { '<CMD>Telescope oldfiles<CR>', 'Open Recent Files' },
            b = { '<CMD>Telescope file_browser hidden=true<CR>', 'File Browser' }
        },
        -- undotree
        u = { '<CMD>UndotreeToggle<CR>', 'Open Undo Tree' },
        -- save
        s = { '<CMD>w<CR>', 'Save' },
        -- close tab
        w = { '<CMD>bd<CR>', 'Kill Buffer' },
        -- nvim tree
        e = { '<CMD>NvimTreeT<CR>', 'Toggle Nvim Tree' },
        -- harpoon
        h = {
            name = 'harpoon',
            a = { '<CMD>lua require("harpoon.mark").add_file()<CR>', 'Add File' },
            q = { '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>', 'Open Quick Menu' },
            n = { '<CMD>lua require("harpoon.ui").nav_next()<CR>', 'Next File' },
            p = { '<CMD>lua require("harpoon.ui").nav_prev()<CR>', 'Previous File' },
        },
        -- terminal
        t = { '<CMD>lua require("harpoon.term").gotoTerminal(1)<CR>', 'Open Terminal' },
        -- git
        g = {
            name = 'git',
            -- gitgutter
            h = {
                n = { '<CMD>GitGutterNextHunk<CR>', 'Goto Next Hunk' },
                p = { '<CMD>GitGutterPrevHunk<CR>', 'Goto Previous Hunk' },
                e = { '<CMD>GitGutterPreviewHunk<CR>', 'Preview Hunk' },
            },
            -- fugitive
            s = { '<CMD>Git status<CR>', 'Git Status' },
            a = { '<CMD>Git add .<CR>', 'Git Add All' },
            c = { '<CMD>Git commit<CR>', 'Git Commit' },
            d = { '<CMD>Git diff<CR>', 'Git Diff' },
            g = { '<CMD>Git<CR>', 'Git Summary' },
            p = { '<CMD>Git push origin', 'Git Push' },
        },
    },
    -- switch tabs
    ['<TAB>'] = {
        ['`'] = { '<CMD>bp<CR>', 'Previous Tab' },
        ['<TAB>'] = { '<CMD>bn<CR>', 'Net Tab' },
    },
})

require("which-key").setup{}
