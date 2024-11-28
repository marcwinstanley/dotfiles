return {
	{
		"nordtheme/vim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme nord]])
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#434c5e" })
		end,
	},
	{ "janko-m/vim-test" },
	{ "junegunn/fzf.vim" },
	{ "tpope/vim-eunuch" },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-vinegar" },
}
