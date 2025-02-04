return {

    --Nightfox
	{
	"EdenEast/nightfox.nvim",
	name = "nightfox",
    config = function()
         --vim.cmd.colorscheme "nightfox"
    end
	},

    --GitHub
	{
	'projekt0n/github-nvim-theme',
	name = 'github-theme',
	config = function()
         --vim.cmd.colorscheme "github_dark"
         --vim.cmd.colorscheme "github_dark_colorblind"
	end
	},

    --Nord
	{
	"shaunsingh/nord.nvim",
	name = "nord",
	config = function()
	   --vim.cmd.colorscheme "nord"
   end
	},

    --Catppuccin
    {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,

    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
    }




}
