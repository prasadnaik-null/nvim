-- Short hand
local lsp = require('lsp-zero')
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Recommended preset coz idk what this thing does much
lsp.preset('recommended')

-- Trying to get rid of " Undefined global 'vim'"
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- Key bindings when lsp in action
lsp.on_attach(function(client, bufnr)
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {buffer = bufnr, remap = false, desc = "Go to Definition"})
  vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, {buffer = bufnr, remap = false, desc = "Go to Type Definition"})
  vim.keymap.set("n", "gr", '<CMD>Telescope lsp_references<CR>', {buffer = bufnr, remap = false, desc = 'Go to References'} )
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {buffer = bufnr, remap = false, desc = 'Hover info'})
  -- (Telescopee find grep) vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "dn", function() vim.diagnostic.goto_next() end, {buffer = bufnr, remap = false, desc = 'Diagnostics Next'})
  vim.keymap.set("n", "dp", function() vim.diagnostic.goto_prev() end, {buffer = bufnr, remap = false, desc = 'Diagnostics Previous'})
  vim.keymap.set("n", "<leader>c", function() vim.lsp.buf.code_action() end, {buffer = bufnr, remap = false, desc = 'Code actions'})
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, {buffer = bufnr, remap = false, desc = 'Variable rename'})
  -- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, {buffer = bufnr, remap = false})
end)

-- Run the presets (ig)
lsp.setup{
    capabilities = capabilities
}

-- Something related to errors
vim.diagnostic.config({
    virtual_text = true
})
