local lsp = require('lsp-zero')

-- recommended preset coz idk what this thing does much
lsp.preset('recommended')

lsp.ensure_installed({
  'sumneko_lua',
})

-- Fix Undefined global 'vim'
lsp.configure('lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- key bindings for auto completion
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Enter>'] = cmp.mapping.confirm({ select = true }),
  ["C-y"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
