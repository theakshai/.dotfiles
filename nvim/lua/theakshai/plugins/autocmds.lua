return {
  vim.cmd([[autocmd BufWritePost *.py silent !autopep8 --in-place --aggressive %]]),
  vim.cmd([[autocmd BufWritePost *.go silent !gofumpt -w %]]),
  vim.cmd([[autocmd BufWritePost *.tf silent !hclfmt -w %]]),
  vim.cmd([[autocmd BufWritePost *.js,*.ts silent !standard --fix %]]),
}

