return {
	-- first key is the mode, n == normal mode
	n = {
		-- second key is the prefix, <leader> prefixes
		["<leader>"] = {
			-- which-key registration table for normal mode, leader prefix
			-- ["N"] = { "<cmd>tabnew<cr>", "New Buffer" },

			-- todo
			s = {
				name = "Search",
				t = { "<cmd>TodoTelescope<cr>", "Todo" },
			},

			-- hop
			H = {
				name = "Hop",
				w = { "<cmd>HopWord<cr>", "Word" },
				["/"] = { "<cmd>HopPattern<cr>", "Pattern" },
				["1"] = { "<cmd>HopChar1<cr>", "1 Char" },
				["2"] = { "<cmd>HopChar2<cr>", "2 Char" },
				l = { "<cmd>HopLine<cr>", "Line" },
			},

			-- ZK
			n = {
				name = "Notes",
				b = {
					function()
						require("zk.commands").get("ZkBacklinks")()
					end,
					"Backlink Picker",
				},
				d = {
					function()
						require("zk.commands").get("ZkCd")()
					end,
					"Change Directory",
				},
				r = {
					function()
						require("zk.commands").get("ZkIndex")()
					end,
					"Refresh Index",
				},
				l = {
					function()
						require("zk.commands").get("ZkLinks")()
					end,
					"Link Picker",
				},
				s = {
					function()
						require("zk.commands").get("ZkNotes")({ sort = { "modified" } })
					end,
					"Search",
				},
				n = {
					function()
						require("zk.commands").get("ZkNew")({ title = vim.fn.input("Title: ") })
					end,
					"New Note",
				},
				t = {
					function()
						require("zk.commands").get("ZkTags")()
					end,
					"Tags",
				},
			},
		},
	},

	-- visual mode
	v = {
		-- ZK
		n = {
			name = "Notes",
			m = { ":'<,'>ZkMatch<CR>", "Match" },
		},
	},
}
