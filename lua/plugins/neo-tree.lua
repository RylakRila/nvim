return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            window = {
                width = 27
            }
        })
        vim.keymap.set('n', 'Q', ':Neotree filesystem reveal left<CR>', {})
        vim.keymap.set('n', 'Z', ':Neotree close filesystem<CR>', {})
    end
}
