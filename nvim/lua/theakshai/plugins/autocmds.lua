return {
vim.api.nvim_command("autocmd BufWritePost *.py :silent !autopep8 --in-place --aggressive %"),
vim.api.nvim_command("autocmd BufWritePost *.go :silent !gofumpt -w %"),
vim.api.nvim_command("autocmd BufWritePost *.tf :silent !hclfmt -w %")
}
