function ColorMyPencils(color)
	-- default color
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
