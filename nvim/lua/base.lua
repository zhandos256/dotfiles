local opt = vim.opt
123local cmd = vim.cmd
local exec = vim.api.nvim_exec

opt.number = true
opt.ignorecase = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.splitright = true
opt.splitbelow = true
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.background = "dark"
opt.termguicolors = true
opt.clipboard = "unnamedplus"
opt.ai = true
opt.si = true
opt.wrap = false
opt.title = true
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.cursorline = true

-- cmd[[ colorscheme retrobox ]]
-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])
cmd([[
filetype indent plugin on
syntax enable
]])

-- remove line lenght marker for selected filetypes
cmd([[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]])
-- 2 spaces for selected filetypes
cmd([[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]])

-- С этой строкой отлично форматирует html файл, который содержит jinja2
cmd([[ autocmd BufNewFile,BufRead *.html set filetype=htmldjango ]])
-- Запоминает где nvim последний раз редактировал файл
cmd([[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])

-- Подсвечивает на доли секунды скопированную часть текста
exec(
	[[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]],
	false
)

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		vim.cmd([[highlight CursorLine guibg=NONE cterm=underline]])
		vim.cmd([[highlight CursorLineNr guifg=#fffa78 guibg=NONE cterm=underline]])
	end,
})
