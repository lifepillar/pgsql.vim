au BufNewFile,BufRead *.pgsql setf pgsql
au BufNewFile,BufRead *.pgsql call pgsql#load_keywords()
" use Vim's default SQL indentation file.
au BufNewFile,BufRead *.pgsql exec 'runtime indent/sqlanywhere.vim'
