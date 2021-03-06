" deoplete
"======================================================================
let g:deoplete#enable_at_startup=1
"let g:deoplete#auto_completion_start_length=3
call deoplete#custom#option({
    \ 'smart_case': v:true,
    \ 'auto_complete_delay': 150,
    \ })

inoremap <expr><C-g> deoplete#undo_completion()
inoremap <expr><C-l> deoplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>deoplete_cr_function()<CR>
inoremap <expr><C-y> deoplete#close_popup()

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"

function! s:deoplete_cr_function() abort
  return deoplete#close_popup() . "\<CR>"
endfunction

"" JAVASCRIPT COMPLETION
"" =========================================================================
"let g:deoplete#sources#ternjs#timeout = 1

"" Whether to include the types of the completions in the result data. Default: 0
"let g:deoplete#sources#ternjs#types = 1

"" Whether to include the distance (in scopes for variables, in prototypes for
"" properties) between the completions and the origin position in the result
"" data. Default: 0
"let g:deoplete#sources#ternjs#depths = 1

"" Whether to include documentation strings (if found) in the result data.
"" Default: 0
"let g:deoplete#sources#ternjs#docs = 0

"" When on, only completions that match the current word at the given point will
"" be returned. Turn this off to get all results, so that you can filter on the
"" client side. Default: 1
"let g:deoplete#sources#ternjs#filter = 0

"" Whether to use a case-insensitive compare between the current word and
"" potential completions. Default 0
"let g:deoplete#sources#ternjs#case_insensitive = 1

"" When completing a property and no completions are found, Tern will use some
"" heuristics to try and return some properties anyway. Set this to 0 to
"" turn that off. Default: 1
"let g:deoplete#sources#ternjs#guess = 0

"" Determines whether the result set will be sorted. Default: 1
"let g:deoplete#sources#ternjs#sort = 0

"" When disabled, only the text before the given position is considered part of
"" the word. When enabled (the default), the whole variable name that the cursor
"" is on will be included. Default: 1
"let g:deoplete#sources#ternjs#expand_word_forward = 0

"" Whether to ignore the properties of Object.prototype unless they have been
"" spelled out by at least two characters. Default: 1
"let g:deoplete#sources#ternjs#omit_object_prototype = 0

"" Whether to include JavaScript keywords when completing something that is not
"" a property. Default: 0
"let g:deoplete#sources#ternjs#include_keywords = 1

"" If completions should be returned when inside a literal. Default: 1
"let g:deoplete#sources#ternjs#in_literal = 0

""Add extra filetypes
"let g:deoplete#sources#ternjs#filetypes = [ 'jsx', 'javascript.jsx', 'vue', 'ts', ]

"" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"" disable ale completion for typescript
"call deoplete#custom#option('ignore_sources', {'_': ['ale']})

" PHP COMPLETION
" =========================================================================
" let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
" let g:deoplete#ignore_sources.php = ['omni']

" SCALA COMPLETION
" =========================================================================
" DO NOT DO THIS – CSS COMPLETION WILL STOP
" let g:deoplete#omni#input_patterns={}
" let g:deoplete#omni#input_patterns.scala='[^. *\t]\.\w*'

" GO COMPLETION
" =========================================================================
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']"
