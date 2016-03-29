# Vim PostgreSQL syntax plugin

![pgsql syntax highlighting](images/pgsql.png)

This plugin provides syntax highlighting and auto-completion support for
PostgreSQL version 9.4 or above and for some of its extensions:

- PL/pgSQL;
- any other language, like PL/Python, PL/R, etc...;
- [PostGIS](http://postgis.net) 2.2 (including PostGIS Topology);
- [pgTap](http://pgtap.org) 0.95.0.


# Installation

If your Vim supports packages (`echo has('packages')` prints `1`), I strongly
recommend that you use them. Just clone this repo inside `pack/*/start`, e.g.,

    cd ~/.vim
    git clone https://github.com/lifepillar/pgsql.vim.git pack/bundle/start/pgsql

Otherwise, if you don't have a preferred installation method, I recommend
installing [Pathogen](https://github.com/tpope/vim-pathogen), and then simply
copy and paste:

    cd ~/.vim/bundle
    git clone https://github.com/lifepillar/pgsql.vim.git


# Usage

**For thorough documentation, see `:h pgsql.txt`.**

Files with a `.pgsql` suffix are highlighted out of the box. If you want to
highlight `.sql` files using this plugin by default, add this to your `.vimrc`
(see `:h ft_sql.txt`):

    let g:sql_type_default = 'pgsql'

Alternatively, after loading a `.sql` file use this command:

    :SQLSetType pgsql.vim

To set the file type in new buffers use:

    :let b:sql_type_override='pgsql' | set ft=sql

Code between `$pgsql$` or `$$` pairs is treated as PL/pgSQL and highlighted
accordingly:

![PL/pgSQL snippet](images/plpgsql.png)

You may set `g:pgsql_pl` to a list of file types to be used in user-defined
functions. For example, after setting:

    let g:pgsql_pl = ['python']

code between `$python$` pairs will be highlighted as Python:

![PL/Pythonu snippet](images/plpython.png)


# Snippets

UltiSnips snippets have been removed in commit
[aae77099](https://github.com/lifepillar/pgsql.vim/commit/aae77099bccaa5f443994821130688e0c30182d9)
essentially for three reasons:

- not everyone using this plugin uses UltiSnips;
- UltiSnips already provides some basic SQL snippets;
- snippets's style and behaviour are a matter of personal taste.

So, if you want PostgreSQL-specific snippets, you'd better write your own. The
ones I use are in my [Vim
configuration](https://github.com/lifepillar/vimrc/blob/master/UltiSnips/sql.snippets).


# Acknowledgments

Original code from [space::tekk](https://github.com/spacetekk/pgsql.vim).

