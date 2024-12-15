local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.shfmt,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.autopep8,
		null_ls.builtins.diagnostics.flake8,
	},
})
