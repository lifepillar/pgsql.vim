" Vim pgsql plugin
" Language:    SQL
" Author:  space::tekk <inbox@spacetekk.ru>
" Maintainer: Lifepillar <lifepillar@lifepillar.me>

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

let b:undo_ftplugin = "setlocal ".
      \ "complete< dictionary<"

setlocal complete& complete+=k

let s:path = fnamemodify(expand('<sfile>'), ':h:h')
let s:dictionary = s:path.'/dic/pgsql'
execute 'setlocal dictionary& dictionary+=' . s:dictionary

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: ts=4 fdm=marker
