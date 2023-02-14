-- Short hand
local lsp = require('lsp-zero')

-- Recommended preset coz idk what this thing does much
lsp.preset('recommended')

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Key bindings for auto completion
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<CR>'] = cmp.mapping.confirm({ select = false }),
  -- ['<C-Enter>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.abort()
        fallback()
      else
        cmp.complete()
      end
    end),
})

cmp_mappings['<Enter>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

-- Run the presets (ig)
lsp.setup()

-- Something related to errors
vim.diagnostic.config({
    virtual_text = true
})
