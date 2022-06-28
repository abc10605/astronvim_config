-- Add plugins, the packer syntax without the "use"
return {
	-- You can disable default plugins as follows:
	-- ["goolord/alpha-nvim"] = { disable = true },

	-- You can also add new plugins here as well:
	-- { "andweeb/presence.nvim" },
	-- {
	--   "ray-x/lsp_signature.nvim",
	--   event = "BufRead",
	--   config = function()
	--     require("lsp_signature").setup()
	--   end,
	-- },

	-- todo
	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	},

	-- lsp
	{ "nanotee/sqls.nvim" },

	-- value manipulation
	{
		"monaqa/dial.nvim",
		config = require("user.plugins.dial"),
	},

	-- colorscheme
	{ "EdenEast/nightfox.nvim" },

	-- surroundings
	{ "machakann/vim-sandwich" },

	-- motion
	{
		"phaazon/hop.nvim",
		branch = "v1", -- optional but strongly recommended
		config = require("user.plugins.hop"),
	},
}
