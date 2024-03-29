local wk = require('which-key')

wk.register({
    ['<leader>'] = {
        -- telescope
        ['<leader>'] = { '<CMD>Telescope find_files<CR>', 'Find File' },
        f = {
            name = 'Telescope',
            f = { '<CMD>Telescope find_files<CR>', 'Find File' },
            g = { '<CMD>Telescope live_grep<CR>', 'Live Grep' },
            r = { '<CMD>Telescope oldfiles<CR>', 'Open Recent Files' },
            b = { '<CMD>Telescope file_browser hidden=true<CR>', 'File Browser' }
        },
        -- undotree
        u = { '<CMD>UndotreeToggle<CR>', 'Open Undo Tree' },
        -- save
        w = { '<CMD>w<CR>', 'Save' },
        -- nvim tree
        e = { '<CMD>NvimTreeT<CR>', 'Toggle Nvim Tree' },
        -- harpoon
        h = {
            name = 'Harpoon',
            a = { '<CMD>lua require("harpoon.mark").add_file()<CR>', 'Add File' },
            q = { '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>', 'Open Quick Menu' },
            n = { '<CMD>lua require("harpoon.ui").nav_next()<CR>', 'Next File' },
            p = { '<CMD>lua require("harpoon.ui").nav_prev()<CR>', 'Previous File' },
        },
        -- terminal
        t = { '<CMD>lua require("harpoon.term").gotoTerminal(1)<CR>', 'Open Terminal' },
        -- git
        g = {
            name = 'Git',
            -- gitgutter
            h = {
                name = 'Hunks',
                n = { '<CMD>GitGutterNextHunk<CR>', 'Goto Next Hunk' },
                p = { '<CMD>GitGutterPrevHunk<CR>', 'Goto Previous Hunk' },
                e = { '<CMD>GitGutterPreviewHunk<CR>', 'Preview Hunk' },
            },
            -- fugitive
            s = { '<CMD>Git status<CR>', 'Git Status' },
            a = { '<CMD>exec "Root" | Git add .<CR>', 'Git Add All' },
            c = { '<CMD>Git commit<CR>', 'Git Commit' },
            d = { '<CMD>Git diff<CR>', 'Git Diff' },
            g = { '<CMD>Git<CR>', 'Git Summary' },
            p = { ':Git push origin', 'Git Push' },
            r = { '<CMD>Git restore --staged .<CR>', 'Restore all staged files' },
        },
        -- tabs/buffers
        b = {
            name = 'Buffers',
            n = { '<CMD>bn<CR>', 'Net Tab' },
            p = { '<CMD>bp<CR>', 'Previous Tab' },
            k = { '<CMD>%bd|e#<CR>', 'Kill All but not Current' },
            d = { '<CMD>bd<CR>', 'Kill Current' },
        },
        -- sml
        s = {
            name = "SML REPL",
            s = { '<CMD>SMLReplStart<CR>', 'Start' },
            o = { '<CMD>SMLReplBuild<CR>', 'Open Current File' },
            c = { '<CMD>SMLReplClear<CR>', 'Clear' },
        },
        -- quit nvim using space coz : is a lot of work 
        q = { '<CMD>exec "w" | q<CR>', 'Close Split/Quit' },
        -- show pwd
        p = { '<CMD>pwd<CR>', 'Show present working directory' },
        -- cd to root of current git
        r = { '<CMD>Root<CR>', 'CD to root of current git' },
        -- short hand to delete current buffer
        k = { '<CMD>bd<CR>', 'Kill Current Buffer' },
        -- lsp (just main tags)
        l = { '<CMD>sp ~/.config/nvim/lsp_help.txt<CR>', 'Show LSP Commands' },
        -- variable actions
        v = {
            name = 'Variable actions',
            r = {
                name = 'Extra step coz both start with "r"',
            },
        },
        -- jupyter
        j = {
            name = 'Jupyter',
            p = { '<CMD>call jukit#convert#notebook_convert(g:jukit_notebook_viewer)<CR>', 'Convert to python' },
            t = { '<CMD>call jukit#splits#output()<CR>', 'Open terminal split' },
            s = {
                name = 'Send to terminal',
                l = { '<cmd>call jukit#send#line()<cr>', 'Send current line to terminal' },
                c = { '<cmd>call jukit#send#section(0)<cr>', 'Send current cell to terminal' },
                s = { '<cmd>call jukit#send#selection()<cr>', 'Send selection to terminal' },
                a = { '<CMD>call jukit#send#all()<CR>', 'Send full code to terminal' },
            },
            c = {
                name = 'Creating Cells',
                a = { '<cmd>call jukit#cells#create_above(0)<cr>', 'Create code cell above' },
                b = { '<cmd>call jukit#cells#create_below(0)<cr>', 'Create code cell below' },
                u = { '<cmd>call jukit#cells#create_above(1)<cr>', 'Create markdown cell above' },
                d = { '<cmd>call jukit#cells#create_below(1)<cr>', 'Create markdown cell below' },
            },
        },
    },
    -- switch tabs
    ['<TAB>'] = {
        ['`'] = { '<CMD>bp<CR>', 'Previous Tab' },
        ['<TAB>'] = { '<CMD>bn<CR>', 'Net Tab' },
    },
})

require("which-key").setup{}
