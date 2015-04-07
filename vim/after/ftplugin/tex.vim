if exists('&spell')
    setlocal spell
    syntax spell toplevel
endif

inoremap <buffer><expr> _ getline('.')[col('.')-2] == '_' ? "\<BS>$_{}$<`0`>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>" : '_'
inoremap <buffer><expr> ^ getline('.')[col('.')-2] == '^' ? "\<BS>$^{}$<`0`>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>" : '^'

" Text object
call textobj#user#plugin('latex', {
            \   'environment': {
            \     '*pattern*': ['\\begin{[^}]\+}.*\n\s*', '\n^\s*\\end{[^}]\+}.*$'],
            \     'select-a': 'ae',
            \     'select-i': 'ie',
            \     'region-type': 'V',
            \   },
            \  'dollar-math-a': {
            \     '*pattern*': '[$][^$]*[$]',
            \     'select': 'a$',
            \   },
            \  'dollar-math-i': {
            \     '*pattern*': '[$]\zs[^$]*\ze[$]',
            \     'select': 'i$',
            \   },
            \  'quote': {
            \     '*pattern*': ['`', "'"],
            \     'select-a': 'aq',
            \     'select-i': 'iq',
            \   },
            \  'double-quote': {
            \     '*pattern*': ['``', "''"],
            \     'select-a': 'aQ',
            \     'select-i': 'iQ',
            \   },
            \ })

omap <buffer> iE <Plug>(textobj-latex-environment-i)
omap <buffer> aE <Plug>(textobj-latex-environment-a)
vmap <buffer> iE <Plug>(textobj-latex-environment-i)
vmap <buffer> aE <Plug>(textobj-latex-environment-a)

omap <buffer> i$ <Plug>(textobj-latex-dollar-math-i)
omap <buffer> a$ <Plug>(textobj-latex-dollar-math-a)
vmap <buffer> i$ <Plug>(textobj-latex-dollar-math-i)
vmap <buffer> a$ <Plug>(textobj-latex-dollar-math-a)

omap <buffer> iq <Plug>(textobj-latex-quate-i)
omap <buffer> aq <Plug>(textobj-latex-quate-a)
vmap <buffer> iq <Plug>(textobj-latex-quate-i)
vmap <buffer> aq <Plug>(textobj-latex-quate-a)

omap <buffer> iQ <Plug>(textobj-latex-double-quate-i)
omap <buffer> aQ <Plug>(textobj-latex-double-quate-a)
vmap <buffer> iQ <Plug>(textobj-latex-double-quate-i)
vmap <buffer> aQ <Plug>(textobj-latex-double-quate-a)
