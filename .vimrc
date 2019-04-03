syntax on

set mouse=a
set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','

" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

set clipboard=unnamed

" faster redrawing
set ttyfast

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" => User Interface
" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

""set encoding=utf8
""set encoding=unicode
""let base16colorspace=256  " Access colors present in 256 colorspace"
""set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
""set background=dark
""colorscheme delek

set number

set autoindent " automatically set indent of new line
set smartindent

set laststatus=2 " show the satus line all the time

set nocompatible
syntax on
"colo desert
set number
set history=50
set ruler

set ignorecase
set incsearch
set smartcase
set hlsearch

set hidden

set laststatus=2

set showcmd
set showmode

set relativenumber

""" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set a map leader for more key combos
let mapleader = ','

map <leader>ev :e! ~/.vimrc<cr> " edit ~/.vimrc

map <leader>wc :wincmd q<cr>
""" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

""" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

map <leader>s <esc>:w<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

""" Window movement shortcuts
""" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

if has("autocmd")
	augroup templates
		autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
		autocmd BufNewFile *.s 0r ~/.vim/templates/skeleton.as
		autocmd BufNewFile Makefile 0r ~/.vim/templates/skeleton.makefile
		autocmd BufNewFile *.h call LoadMyClass()
	augroup END

	augroup myvimrchooks
		au!
		autocmd bufwritepost .vimrc source ~/.vimrc
	augroup END

endif

function! LoadMyClass()
	echom 'hello'
	call TempClass(%)

endf

function! TempClass(c_name)
	r ~/.vim/templates/Klasa.h	
	exec '%s/Klasa/'.a:c_name.'/g'
	"%s/Klasa/"a:c_name"/g

"    let t:curwin = winnr()
"    exec "wincmd ".a:key
"    if (t:curwin == winnr())
"        if (match(a:key,'[jk]'))
"            wincmd v
"        else
"            wincmd s
"        endif
"        exec "wincmd ".a:key
"    endif
endfunction
""" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""" close NERDTree after a file is opened
""let g:NERDTreeQuitOnOpen=0
""" show hidden files in NERDTree
""let NERDTreeShowHidden=1
""" Toggle NERDTree
""nmap <silent> <leader>k :NERDTreeToggle<cr>
""" expand to the path of the file in the current buffer
""nmap <silent> <leader>y :NERDTreeFind<cr>
""
""" map fuzzyfinder (CtrlP) plugin
""" nmap <silent> <leader>t :CtrlP<cr>
""nmap <silent> <leader>r :CtrlPBuffer<cr>
""let g:ctrlp_map='<leader>t'
""let g:ctrlp_dotfiles=1
""let g:ctrlp_working_path_mode = 'ra'
""
""" CtrlP ignore patterns
""let g:ctrlp_custom_ignore = {
""            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
""            \ 'file': '\.exe$\|\.so$'
""            \ }
""
""" search the nearest ancestor that contains .git, .hg, .svn
""let g:ctrlp_working_path_mode = 2
