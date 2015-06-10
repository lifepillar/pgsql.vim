au BufNewFile,BufRead *.pgsql setf pgsql
au BufNewFile,BufRead *.pgsql call pgsql#load_keywords()
