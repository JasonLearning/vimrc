" basic settings
set autoread
set history=500
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

set nu
let $LANG='en'
set langmenu=en

set wildignore=*.o,*~,*.pyc
set wildignore+=.git\*,.hg\*,.svn\*
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

map <silent> <leader><cr> :noh<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" tabs
nmap <Leader>1 1gt
nmap <Leader>2 2gt
nmap <Leader>3 3gt
nmap <Leader>4 4gt
nmap <Leader>5 5gt
nmap <Leader>6 6gt
nmap <Leader>7 7gt
nmap <Leader>8 8gt
nmap <M-9> 9gt
nmap <M-0> :tablast<CR>

" jump
noremap <Leader>, <C-o>
noremap <Leader>. <C-i>
" cpp settings
syntax enable
syntax on
set tags+=/usr/include/c++/7/stdcpp.tags

" vim plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 't9md/vim-quickhl'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'derekwyatt/vim-fswitch'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

call plug#end()

" ultisnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" fzf
nmap <C-p> :FZF<CR>
nmap <silent> <Leader>o :FSHere<cr>

" nerdtree
nmap <C-b> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1

" quickhl
nmap <F8> <Plug>(quickhl-manual-this)
xmap <F8> <Plug>(quickhl-manual-this)
nmap <C-F8> <Plug>(quickhl-manual-reset)
xmap <C-F8> <Plug>(quickhl-manual-reset)

" cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_quit_key            = '<Esc>'

" cpphl
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" ycm
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
inoremap <leader>; <C-x><C-o>
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_invoke_completion = '<c-z>'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_semantic_triggers = {'c,cpp,python,go': ['re!\w{2}']}

" airline
"" airline settings.
let g:airline_theme = 'atomic'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
" show absolute file path in status line
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
" show tab number in tab line
let g:airline#extensions#tabline#tab_nr_type = 1

" helper
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
