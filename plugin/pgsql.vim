" Vim pgsql plugin
" Language:    SQL
" Author:  space::tekk <inbox@spacetekk.ru>
" Maintainer: Lifepillar <lifepillar@lifepillar.me>

if exists('g:loaded_pgsql')
    finish
endif
let g:loaded_pgsql = 1
let s:keepcpo= &cpo


let s:path = fnamemodify(expand('<sfile>'), ':h:h')
let s:dictionary = s:path.'/dic/pgsql'


function! pgsql#load_keywords()
    execute 'setlocal dictionary+=' . s:dictionary
endfunction


let &cpo= s:keepcpo
unlet s:keepcpo

" vim: ts=4 fdm=marker
