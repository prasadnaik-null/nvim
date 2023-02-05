local mark =require("harpoon.mark")
local ui = require("harpoon.ui")

-- add current file to harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)
-- open quick menu
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)
