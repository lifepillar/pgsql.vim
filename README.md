# Vim PostgreSQL syntax plugin with PL/pgSQL and PL/Python support

Supports PostgreSQL version 9.4 or above, highlights most built-in functions.
Keywords according to:
[SQL Key Words](http://www.postgresql.org/docs/current/static/sql-keywords-appendix.html).


# Installation

- Using [Vundle](https://github.com/gmarik/vundle), add to `.vimrc`:

    Plugin 'lifepillar/pgsql.vim'

- Using [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone https://github.com/lifepillar/pgsql.vim.git


# Usage

Highlights `.pgsql` files out of the box. If you want to highlight `.sql` files
using this plugin by default, add this to your `.vimrc` (see `:h ft_sql.txt`):

    let g:sql_type_default = 'pgsql'

Alternatively, after loading a `.sql` file use this command:

    :SQLSetType pgsql.vim


# PL/pgSQL Support

Code between `$pgsql$` or `$$` pairs is considered PL/pgSQL and
highlighted accordingly.

    create or replace function foo()
    returns void language plpgsql immutable as $pgsql$
    begin
      raise notice 'This is a PL/pgSQL function';
    end;
    $pgsql$;


# PL/Pythonu Support

Code between `$python$` pairs is highlighted as Python. For example:

    create or replace function plpythonu_version()
    returns text language plpythonu as $python$
      res = plpy.execute('select * from version()')
      return res[0]['version']
    $python$;


# Bonus

Some useful snippets.


# Acknowledgments

Original code from [space::tekk](https://github.com/spacetekk/pgsql.vim).

