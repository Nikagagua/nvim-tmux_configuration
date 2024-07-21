local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Error handling
local status, lazy = pcall(require, "lazy")
if not status then
	print("Error loading lazy.nvim: " .. lazy)
	return
end

status, err = pcall(lazy.setup, "plugins")
if not status then
	print("Error setting up plugins: " .. err)
	return
end

-- Load other configurations
require("vim-options")
