-- setup lazy.nvim eerst.
require("config.lazy")

-- lsp shit, MOET in deze volgorde.
-- Als je een nieuwe LSP toevoegt voeg een nieuwe require("lspconfig") aan met de LSP server en .setup()
require("mason").setup()
require("mason-lspconfig").setup()

-- html css js lsp setup.
--require("lspconfig").eslint.setup({})
require("lspconfig").html.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").ts_ls.setup({})

-- latex latex setup.
require("lspconfig").texlab.setup({})
require("lspconfig").ltex.setup({})

-- typescript-language-server setup.
require('lspconfig').ts_ls.setup({})

-- linting regel dit ooit later ofs.
require('lint').linters_by_ft = {
  markdown = {'vale'},
  typescript = {'eslint_d'},
  javascript = {'eslint_d'},
  css = {'stylelint'}
}
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

require("tokyonight").setup({
  transparent = true,
})

require('onedark').setup({
    style = 'dark',
		transparent = true,
})

require('onedark').load()

vim.cmd[[colorscheme onedark]]

-- numbering of lines
vim.wo.number = true

-- Makes tab be 2 spaces. Not sure about the specifics of every single line tbh.
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.expandtab = True

-- meer kleuren 27-7-2025
vim.opt.termguicolors = true

