" Vim pgsql plugin
" Language:    SQL
" Maintainer:  space::tekk <inbox@spacetekk.ru>
" Version:     1.0
" Last Change: 2015-06-09

if exists('g:loaded_pgsql')
    finish
endif
let g:loaded_pgsql = 1
let s:keepcpo= &cpo


let s:path = fnamemodify(expand('<sfile>'), ':h:h')
let s:dictionary = s:path.'/dic/pgsql'


function! pgsql#load_keywords()
    execute 'set dictionary+=' . s:dictionary
endfunction


let &cpo= s:keepcpo
unlet s:keepcpo

" vim: ts=4 fdm=marker
