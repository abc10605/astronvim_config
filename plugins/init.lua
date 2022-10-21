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

	-- cmp
	["hrsh7th/cmp-calc"] = require("user.plugins.cmp-calc"),
	["hrsh7th/cmp-emoji"] = require("user.plugins.cmp-emoji"),
	["hrsh7th/cmp-omni"] = require("user.plugins.cmp-omni"),
	["jc-doyle/cmp-pandoc-references"] = require("user.plugins.cmp-pandoc-references"),

	-- dap
	["mehalter/mason-nvim-dap.nvim"] = require("user.plugins.mason-nvim-dap"),
	["mfussenegger/nvim-dap"] = require("user.plugins.dap"),
	["rcarriga/nvim-dap-ui"] = require("user.plugins.dapui"),
	["theHamsta/nvim-dap-virtual-text"] = require("user.plugins.nvim-dap-virtual-text"),

	-- telescope
	["nvim-telescope/telescope-file-browser.nvim"] = require("user.plugins.telescope-file-browser"),
	["nvim-telescope/telescope-hop.nvim"] = require("user.plugins.telescope-hop"),
	["nvim-telescope/telescope-media-files.nvim"] = require("user.plugins.telescope-media-files"),
	["nvim-telescope/telescope-project.nvim"] = require("user.plugins.telescope-project"),

	-- todo
	["folke/todo-comments.nvim"] = require("user.plugins.todo-comments"),

	-- value manipulation
	["monaqa/dial.nvim"] = require("user.plugins.dial"),

	-- colorscheme
	["EdenEast/nightfox.nvim"] = require("user.plugins.nightfox"),

	-- surroundings
	["machakann/vim-sandwich"] = require("user.plugins.vim-sandwich"),

	-- motion
	["phaazon/hop.nvim"] = require("user.plugins.hop"),
}
