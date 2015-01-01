if exists('&spell')
    setlocal spell
    syntax spell toplevel
endif
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
