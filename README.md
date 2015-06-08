# Vim PostgreSQL 9.4 syntax plugin with PL/Python support

- Last Change: 2015-06-08
- URL: https://github.com/spacetekk/pgsql.vim

Supports PostgreSQL version 9.4, highlights most builtin functions.
Keywords according to:
[SQL Key Words](http://www.postgresql.org/docs/current/static/sql-keywords-appendix.html).


# Installation

- Using [Vundle](https://github.com/gmarik/vundle), add to `.vimrc`:

    Plugin 'spacetekk/pgsql.vim'

- Using [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone https://github.com/spacetekk/pgsql.vim.git


# Usage

Highlights `.pgsql` files out of the box.
You can add `pgsql` dictionary to vim completion, with:

    set dictionary+=~/.vim/bundle/pgsql.vim/dic/pgsql


# PL/Pythonu Support

Use special markers while decalraing plpythonu functions or do 
statements, etc...  Example:

    create or replace function plpythonu_version() returns text language plpythonu as $python$
        res = plpy.execute('select * from version()')
        return res[0]['version']
    $python$;


# Bonus

Some usefull snippts
