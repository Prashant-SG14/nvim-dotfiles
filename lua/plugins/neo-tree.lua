return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set('n', '<leader>er',':Neotree filesystem reveal left<CR>') 
        vim.keymap.set('n', '<leader>ef',':Neotree filesystem reveal right<CR>')
        vim.keymap.set('n', '<leader>ed',':Neotree filesystem reveal bottom<CR>')
    end
}
