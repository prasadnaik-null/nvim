-- number and relativenumber
vim.opt.nu = true
vim.opt.relativenumber = true

-- sets terminal title as the title of current file
vim.opt.title = true

-- allows usage of mouse
vim.opt.mouse = "a"

-- share clipboard b/w os and nvim
vim.opt.clipboard = "unnamedplus"

-- while searching the case you are searching will not be respected 
vim.opt.ignorecase = true

-- tab lenght
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- indentation as per required
vim.opt.smartindent = true

-- not text wraping
vim.opt.wrap = false

-- after hitting <enter> or <n> the highlighting will go
vim.opt.hlsearch = false

-- while searching show where the pattern is ( aesthetically pleasing )
vim.opt.incsearch = true

-- enables 24 bit colours
vim.opt.termguicolors = true

-- while going up and down in a while there always be 8 line above and below (unless EOF)
vim.opt.scrolloff = 8

-- not sure
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.o.undofile = true

-- swap file will be updated in 50 ms
vim.opt.updatetime = 50

-- if wrap then the next line will be indented as per the current line (and from the starting of the line)
vim.o.breakindent = true

-- highlight when yanked
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
