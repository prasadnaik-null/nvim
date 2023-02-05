-- Default show hidden files
require("telescope").setup {
    pickers = {
        find_files = {
            hidden = true,
        }
    }
}

-- Loads in the file browser 
require("telescope").load_extension "file_browser"
