local telescope = require("telescope");
local telescopeConfig = require("telescope.config");
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) };

table.insert(vimgrep_arguments, "--glob");
table.insert(vimgrep_arguments, "!**/node_modules/*");

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        telescope.setup({
            defaults = {
                vimgrep_arguments = vimgrep_arguments,
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--glob", "!**/node_modules/*" },
                },
            },
        })

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
    end,
}
