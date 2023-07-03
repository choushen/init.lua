function ColorMyPencils()
	color = color or "rose-pine"
	
	vim.cmd.colorscheme(color)
	
	-- 0: global space so every window gets it, normal: refers to vim
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
