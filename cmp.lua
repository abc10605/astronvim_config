-- CMP Source Priorities
-- modify here the priorities of default cmp sources
-- higher value == higher priority
-- The value can also be set to a boolean for disabling default sources:
-- false == disabled
-- true == 1000
-- return {
-- 	source_priority = {
-- 		nvim_lsp = 1000,
-- 		luasnip = 750,
-- 		buffer = 500,
-- 		path = 250,
-- 	},
-- }
local cmp = require("cmp")
local luasnip = require("luasnip")
return {
	mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	},
	source_priority = {
		nvim_lsp = 1000,
		omni = 800,
		luasnip = 750,
		emoji = 700,
		pandoc_references = 700,
		calc = 650,
		path = 500,
		buffer = 250,
	},
}
