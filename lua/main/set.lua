-- short hands
local g = vim.g
local o = vim.o
local opt = vim.opt
local api = vim.api

-- number and relativenumber
opt.nu = true
opt.relativenumber = true
o.cursorline = true

-- sets terminal title as the title of current file
opt.title = true

-- allows usage of mouse
opt.mouse = "a"

-- share clipboard b/w os and nvim
opt.clipboard = "unnamedplus"

-- while searching the case you are searching will not be respected
opt.ignorecase = true

-- tab lenght
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- indentation as per required
opt.smartindent = true

-- not text wraping
opt.wrap = false

-- after hitting <enter> or <n> the highlighting will go
opt.hlsearch = false

-- while searching show where the pattern is ( aesthetically pleasing )
opt.incsearch = true

-- enables 24 bit colours
opt.termguicolors = true

-- while going up and down in a while there always be 8 line above and below (unless EOF)
opt.scrolloff = 8

-- not sure
opt.signcolumn = "yes"
opt.isfname:append("@-@")
o.undofile = true

-- swap file will be updated in 50 ms
opt.updatetime = 50

-- if wrap then the next line will be indented as per the current line (and from the starting of the line)
o.breakindent = true

o.timeout = true
o.timeoutlen = 300

-- lsp debug
vim.lsp.set_log_level("debug")

-- highlight when yanked
local highlight_group = api.nvim_create_augroup('YankHighlight', { clear = true })
api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

-- vim.lsp.buf.format()
