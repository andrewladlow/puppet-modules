function! airline#extensions#tabline#formatters#foo#format(bufnr, buffers)
  return fnamemodify(bufname(a:bufnr), ':t')
endfunction
