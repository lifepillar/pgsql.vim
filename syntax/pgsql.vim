" Vim syntax file
" Language:     SQL, PL/PGQL, PL/Python (PostgreSQL 9.4)
" Maintainer:   space::tekk
" Last Change:  2015-06-07

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Always ignore case 
syn case ignore

runtime! syntax/plpgsql.vim

unlet b:current_syntax

syn include @Python syntax/python.vim

syn region plPython start=+\$py\$+ end=+\$py\$;+ keepend contains=@Python
syn region plPython start=+\$python\$+ end=+\$python\$;+ keepend contains=@Python

let b:current_syntax = "pgsql"
