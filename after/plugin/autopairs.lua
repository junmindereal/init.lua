local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
if not cmp_status then
	return
end

autopairs.setup({
    check_ts = true,
    ts_config = {
        lua = { "string" }, -- don't add pairs in lua string treesitter nodes 
        javascript = {"template_string"}, -- don't add pairs in javascript template_string
    },
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
