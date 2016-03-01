# Vim PostgreSQL syntax plugin

![pgsql syntax highlighting](images/pgsql.png)

This plugin provides syntax highlighting and auto-completion support for
PostgreSQL version 9.4 or above and for some of its extensions:

- PL/pgSQL;
- PL/Python;
- [PostGIS](http://postgis.net) 2.2 (including PostGIS Topology);
- [pgTap](http://pgtap.org) 0.95.0.


# Installation

- Using [Vundle](https://github.com/gmarik/vundle), add to `.vimrc`:

        Plugin 'lifepillar/pgsql.vim'

- Using [Pathogen](https://github.com/tpope/vim-pathogen):

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

Code between `$pgsql$` or `$$` pairs is considered PL/pgSQL and highlighted
accordingly:

![PL/pgSQL snippet](images/plpgsql.png)

Code between `$python$` pairs is highlighted as Python. For example:

![PL/Pythonu snippet](images/plpython.png)


# Bonus

Some useful [UltiSnips](https://github.com/SirVer/ultisnips) snippets.


# Acknowledgments

Original code from [space::tekk](https://github.com/spacetekk/pgsql.vim).

