local builtin = require('telescope.builtin')
-- find files
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
-- grep wherever the string is found
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({sreach = vim.fn.input("Grep > ")});
end)
require('telescope').setup{
    defaults = {
        sorting_stratergy = "ascending"
    }
}
