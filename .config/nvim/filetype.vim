if exists('did_load_filetypes')
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead *.txt  setfiletype markdown

  autocmd BufNewFile,BufRead *.less     setfiletype less
  autocmd BufNewFile,BufRead *.sass     setfiletype sass
  autocmd BufNewFile,BufRead *.scss     setfiletype scss
  autocmd BufNewFile,BufRead *.fish setfiletype fish
  autocmd BufNewFile,BufRead *.vb setfiletype vb
  autocmd BufNewFile,BufRead *.cls setfiletype vb
  autocmd BufNewFile,BufRead *.bas setfiletype vb

  " autocmd FileType apache     setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  " autocmd FileType css        setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  " autocmd FileType diff       setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
  " autocmd FileType xml        setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
  " autocmd FileType java       setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  " autocmd FileType sql        setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  " autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType ruby       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType eruby      setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType yaml       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType coffee     setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType tex        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType html       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType sql        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType sh         setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType vim        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType bash       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType zsh        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  " autocmd FileType fish       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
augroup END
