-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
	-- first key is the mode
	n = {
		-- second key is the lefthand side of the map
		-- mappings seen under group name "Buffer"
		["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
		["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
		["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
		["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
		-- quick save
		-- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

		-- telescope find media_file
		["<leader>fM"] = { "<cmd>Telescope media_files<cr>", desc = "Media files" },

		-- todo-telescope
		["<leader>st"] = { "<cmd>TodoTelescope<cr>", desc = "Todo" },

		-- Hop
		["<leader>Hw"] = { "<cmd>HopWord<cr>", desc = "Word" },
		["<leader>H/"] = { "<cmd>HopPattern<cr>", desc = "Pattern" },
		["<leader>H1"] = { "<cmd>HopChar1<cr>", desc = "1 Char" },
		["<leader>H2"] = { "<cmd>HopChar2<cr>", desc = "2 Char" },
		["<leader>Hl"] = { "<cmd>HopLine<cr>", desc = "Line" },

		-- Debugger
		["<leader>Db"] = {
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Toggle Breakpoint",
		},
		["<leader>DB"] = {
			function()
				require("dap").clear_breakpoints()
			end,
			desc = "Clear Breakpoints",
		},
		["<leader>Dc"] = {
			function()
				require("dap").continue()
			end,
			desc = "Continue",
		},
		["<leader>Di"] = {
			function()
				require("dap").step_into()
			end,
			desc = "Step Into",
		},
		["<leader>Dl"] = {
			function()
				require("dapui").float_element("breakpoints")
			end,
			desc = "List Breakpoints",
		},
		["<leader>Do"] = {
			function()
				require("dap").step_over()
			end,
			desc = "Step Over",
		},
		["<leader>Dq"] = {
			function()
				require("dap").close()
			end,
			desc = "Close Session",
		},
		["<leader>DQ"] = {
			function()
				require("dap").terminate()
			end,
			desc = "Terminate",
		},
		["<leader>Dr"] = {
			function()
				require("dap").repl.toggle()
			end,
			desc = "REPL",
		},
		["<leader>Ds"] = {
			function()
				require("dapui").float_element("scopes")
			end,
			desc = "Scopes",
		},
		["<leader>Dt"] = {
			function()
				require("dapui").float_element("stacks")
			end,
			desc = "Threads",
		},
		["<leader>Du"] = {
			function()
				require("dapui").toggle()
			end,
			desc = "Toggle Debugger UI",
		},
		["<leader>Dw"] = {
			function()
				require("dapui").float_element("watches")
			end,
			desc = "Watches",
		},
		["<leader>Dx"] = {
			function()
				require("dap.ui.widgets").hover()
			end,
			desc = "Inspect",
		},
	},
	t = {
		-- setting a mapping to false will disable it
		-- ["<esc>"] = false,
	},
}
