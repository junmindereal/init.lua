-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	-- keybinds for navigation in lspsaga window
	scroll_preview = { scroll_down = "<C-n>", scroll_up = "<C-p>" },
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
})
