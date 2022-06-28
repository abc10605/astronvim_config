return {
	-- first key is the mode, n == normal mode
	n = {
		-- second key is the prefix, <leader> prefixes
		["<leader>"] = {
			-- which-key registration table for normal mode, leader prefix
			-- ["N"] = { "<cmd>tabnew<cr>", "New Buffer" },

			-- hop
			H = {
				name = "Hop",
				w = { "<cmd>HopWord<cr>", "Word" },
				["/"] = { "<cmd>HopPattern<cr>", "Pattern" },
				["1"] = { "<cmd>HopChar1<cr>", "1 Char" },
				["2"] = { "<cmd>HopChar2<cr>", "2 Char" },
				l = { "<cmd>HopLine<cr>", "Line" },
			},
		},
	},
}
