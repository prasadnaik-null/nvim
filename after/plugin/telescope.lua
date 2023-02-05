-- Sets the default to ascending and theme as dropdown
require('telescope').setup{
    defaults = {
        sorting_stratergy = "ascending"
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
}
