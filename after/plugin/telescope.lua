local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>re', '<cmd>Telescope resume<CR>', {})


require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = require('telescope.actions').move_selection_next,
                ["<C-k>"] = require('telescope.actions').move_selection_previous,
            }
        }

    },
    path_display = { 'smart' },

    pickers = {
        find_files = {
            theme = "ivy"
        },
        live_grep = {
            theme = "ivy"
        },
        buffers = {
            theme = "ivy"
        },
        help_tags = {
            theme = "ivy"
        },
        git_files = {
            theme = "ivy"
        },
    },
}
