if exists('&spell')
    setlocal spell
    syntax spell toplevel
endif


inoremap <buffer><expr> _ getline('.')[col('.')-2] == '_' ? "<sub></sub><`0`>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>" : '_'
inoremap <buffer><expr> ^ getline('.')[col('.')-2] == '^' ? "<sup></sup><`0`>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>\<Left>" : '^'

highlight markdownBoldItalic term=bold cterm=bold gui=bold
highlight markdownItalic term=None cterm=None gui=None

call textobj#user#plugin('latexmath', {
            \  'dollar-math-a': {
            \     '*pattern*': '[$][^$]*[$]',
            \     'select': 'a$',
            \   },
            \  'dollar-math-i': {
            \     '*pattern*': '[$]\zs[^$]*\ze[$]',
            \     'select': 'i$',
            \   },
            \ })
