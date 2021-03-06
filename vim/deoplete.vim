" deoplete options
let g:deoplete#enable_at_startup = 0
let g:deoplete#enable_smart_case = 1

"disable autocomplete by default
let b:deoplete_disable_auto_complete = 1
let g:deoplete_disable_auto_complete = 1
call deoplete#custom#buffer_option('auto_complete', v:false)

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"autocmd FileType markdown let b:deoplete_disable_auto_complete=1
"autocmd FileType vimwiki let b:deoplete_disable_auto_complete=1

" set sources
let g:deoplete#sources = {}
let g:deoplete#sources.vim = ['vim']
let g:deoplete#ignore_sources = {}

call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
