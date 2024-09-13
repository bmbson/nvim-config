-- setup lazy.nvim n mason.
require("config.lazy")
require("mason").setup()

-- lsp shit, kzeg je eerlijk idk hoe dit werkt b.
require("mason-lspconfig").setup()
require("lspconfig").eslint.setup({})

-- linting regel dit ooit later ofs.
-- require("nvim-lint").setup({})

-- vim tidal testing. Je hoeft dit niet te callen vgm.
-- require("vim-tidal")

-- formatting with conform
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		html = { "prettierd", "prettier", stop_after_first = true },
		CSS = { "prettierd", "prettier", stop_after_first = true },
		tex = { "latexindent" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

-- numbering of lines
vim.wo.number = true

-- Makes tab be 2 spaces. Not sure about the specifics of every single line tbh.
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.expandtab = True

-- makes nvim follow terminal theming, mostly for transparancy effect tbh.
vim.cmd([[highlight Normal guibg=none ctermbg=none]])
