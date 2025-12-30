return {
    "neovim/nvim-lspconfig",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "mason-org/mason-lspconfig.nvim",
        "saghen/blink.cmp",
    },
    config = function(_, opts)
        -- enable/install specific LSPs
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "gopls",
                "vtsls",
            },
        });

        -- configure completion
        require("blink.cmp").setup({
            fuzzy = {
                implementation = "rust",
                prebuilt_binaries = {
                    download = true,
                    force_version = "v1.8.0"
                },
            },
        });
    end
}
