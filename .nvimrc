
let mapleader =","
set shell=/usr/bin/zsh

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'junegunn/goyo.vim'
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'jreybert/vimagit'
	" Plug 'LukeSmithxyz/vimling'
	Plug 'vimwiki/vimwiki'
	Plug 'bling/vim-airline'
	Plug 'vifm/vifm.vim'
	Plug 'kovetskiy/sxhkd-vim'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'

	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-fugitive'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'vim-scripts/quickrun.vim'

	" init.vim (c) monedasperdidas 2016
	" vim-plug autoconfig if not already installed
	" Completions and snippets
	Plug 'jiangmiao/auto-pairs'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'Shougo/neco-vim', { 'for': 'vim' }
	Plug 'zchee/deoplete-jedi', { 'for': 'python' }
	Plug 'sebastianmarkow/deoplete-rust', {'for': ' rust '}
	Plug 'rust-lang/rust.vim', {'for': 'rust' }
	Plug 'timonv/vim-cargo', { 'for': 'rust' }
	Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
	Plug 'Quramy/tsuquyomi', {'for': 'typescript' }
	" Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'
  "
	" " Helpers

	" bad theme loading
	" Plug 'sheerun/vimrc'

	Plug 'Shougo/unite.vim'
	Plug 'Shougo/denite.nvim'
	Plug 'Shougo/vimproc.vim', { 'do': 'make' }
	Plug 'haya14busa/incsearch.vim'
	Plug 'brooth/far.vim', { 'do': ':UpdateRemotePlugins' }
	Plug 'tpope/vim-surround'
	Plug 'vim-scripts/matchit.zip'
	Plug 'easymotion/vim-easymotion'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
	Plug 'edkolev/promptline.vim'
	Plug 'kassio/neoterm'
	Plug 'hkupty/nvimux'
  "
	" " IDE
	Plug 'Shougo/vimfiler.vim'
	Plug 'tomtom/tcomment_vim'
	Plug 'neomake/neomake'
	Plug 'tpope/vim-fugitive'
	Plug 'gregsexton/gitv'
	Plug 'euclio/gitignore.vim'
	Plug 'majutsushi/tagbar'
	Plug 'vim-scripts/indentpython.vim'
	Plug 'tpope/vim-dotenv'
	Plug 'ajmwagar/vim-deus'
	Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
	Plug 'tmhedberg/SimpylFold'
	Plug 'Konfekt/FastFold'
	Plug 'airblade/vim-gitgutter'
	Plug 'miyakogi/seiya.vim'
	Plug 'sheerun/vim-polyglot'
  "
	" " Syntax helpers
	Plug 'pearofducks/ansible-vim'
	Plug 'hashivim/vim-vagrant'
	Plug 'freitass/todo.txt-vim', { 'for': 'todo.txt' }
	Plug 'raimon49/requirements.txt.vim'
	Plug 'jpalardy/vim-slime'
call plug#end()

let g:python_host_prog = '/home/jaca/python/python3vim.venv/bin/python3'
let g:python3_host_prog = '/home/jaca/python/python3vim.venv/bin/python3'
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
"                                            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
set clipboard+=unnamedplus
set completeopt-=preview
set noshowmode
set lazyredraw
set hidden
set noswapfile
set ignorecase
set smartcase
set magic
set showmatch
set nobackup
set nowb
set noerrorbells
set updatetime=250

set colorcolumn=80

set relativenumber
set number
set numberwidth=2
set fileformat=unix

set whichwrap+=<,>,h,l

" let mapleader = "\<Space>"

" wildignoresettings
" set wildignore+=.*,.git,*.swp,*pyc,*pyo,*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.jar,*.zip,*.gem,log/**,tmp/**,coverage/**,rdoc/**,output_*,*.xpi,doc/**

" misc edit helps
nmap <silent> <BS> :nohlsearch<CR>
nnoremap <silent> <A-right> :bn<CR>
nnoremap <silent> <A-left> :bp<CR>

" neovim terminal
tnoremap <Esc> <C-\><C-n>

" conceal markers
if has('conceal')
  set conceallevel=2
endif

" incsearch.vim
let g:incsearch#auto_nohlsearch = 1
set hlsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" TagBar
nmap <C-t> :TagbarToggle<CR>

" " themes and colors
" set termguicolors
 set background=dark
" colorscheme deus
" let g:seiya_auto_enable=1
" let g:seiya_target_groups = ['guibg']
"
" " vim-airline settings
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#ale#enabled = 1
" let g:airline_theme = 'dark'
" let g:airline_powerline_fonts = 1
" let g:airline_theme='deus'
"
" " unite/denite vim
" nnoremap <leader>f :Denite file_rec<CR>
" let g:unite_source_grep_command = 'ack-grep'
" let g:unite_source_grep_default_opts ='-i --no-heading --no-color -k -H'
" let g:unite_source_grep_recursive_opt = ''
"
" " vimfiler
" let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_tree_leaf_icon = ''
" let g:vimfiler_tree_opened_icon = '▾'
" let g:vimfiler_tree_closed_icon = '▸'
" let g:vimfiler_marked_file_icon = '✓'
" let g:vimfiler_readonly_file_icon = '✗'
" let g:vimfiler_file_icon = ''
" let g:vimfiler_time_format = '%m-%d-%y %H:%M:%S'
" let g:vimfiler_expand_jump_to_first_child = 0
" let g:vimfiler_quick_look_command = 'gloobus-preview'
" let g:vimfiler_ignore_filters = ['matcher_ignore_wildignore', 'matcher_ignore_pattern ']
"
" call vimfiler#custom#profile('default', 'context', {
"             \ 'direction' : 'rightbelow',
"             \ 'force_quit': 0,
"             \ 'safe': 0
"             \ })
"
" map <C-f> :VimFilerExplorer -winwidth=30 -toggle -no-quit -simple<CR>
" map <leader>f :DeniteProjectDir file_rec -split=vertical -auto-resize -winwidth=35 -no-quit<CR>
"
" " fzf.vim
" nnoremap <C-p> :Files<cr>
" let g:fzf_layout = { 'right': '~20%' }
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }
"
" " Rust settings
" let g:deoplete#sources#rust#racer_binary='~/.cargo/bin/racer'
" let g:deoplete#sources#rust#rust_source_path='~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src'
"
" " session management
" let g:session_autosave = 'no'
"
" NeoTerm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_automap_keys = ',tt'
let g:neoterm_autoinsert = 1
nnoremap <silent> <leader>th :Tclose<cr>
nnoremap <silent> <leader>tl :Tclear<cr>
nnoremap <silent> <leader>tc :Tkill<cr>

autocmd Filetype python nnoremap <buffer> <F6> :w<CR>:T python3 -i "%"<CR>
noremap <F12> <ESC>:Ttoggle<CR>


" inoremap <silent><expr> <c-space> coc#refresh()
"
" " nvr
" let $VISUAL = 'nvr -cc split --remote-wait'
"
" deoplete + neosnippet + autopairs changes
" let g:AutoPairsMapCR=0
" let g:deoplete#auto_complete_start_length = 1
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
" imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
" imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>\<Plug>AutoPairsReturn"
"
" " Neomake
" call neomake#configure#automake('nwr')
"
" augroup neovim
"   autocmd!
"   autocmd FileType vimfiler set nonumber | set norelativenumber
"   autocmd Filetype * if &ft!='vimfiler' | set relativenumber | set number | endif
"   autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"   autocmd StdinReadPre * let s:std_in=1
"   autocmd BufWritePre * %s/\s\+$//e
"   autocmd TermClose * bw!
"   "autocmd BufWinEnter,WinEnter term://* startinsert
"   "autocmd BufLeave term://* stopinsert
"   autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
" augroup END
"






" ##---jaca---##
" use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>
" use ,gf to go to file in a vertical split
nnoremap <silent> ,gf :vertical botright wincmd f<CR>
" see more at http://skwp.github.com/dotfiles


"" Sends default register to terminal TTY using OSC 52 escape sequence
"function! Osc52Yank()
"    let buffer=system('base64 -w0', @0)
"    let buffer=substitute(buffer, "\n$", "", "")
"    let buffer='\e]52;c;'.buffer.'\x07'
"    silent exe "!echo -ne ".shellescape(buffer). " > ".shellescape(g:tty)
"endfunction

"augroup Yank
"  autocmd!
"  autocmd TextYankPost * if v:event.operator ==# 'y' | call Osc52Yank() | endif
"augroup END
"
"" Join yanked text on a yank (needed for terminal mode copies)
"vnoremap yy y<CR>:let @"=substitute(@", '\n', '', 'g')<CR>:call yank#Osc52Yank()<CR>


filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" let g:python3_host_prog="/usr/bin/python3.7"



set bg=light
set go=a
set mouse=a
"set nohlsearch
set clipboard+=unnamedplus

" Some basics:
	nnoremap c "_c
	" set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" faster redrawing
set ttyfast
" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

set autoindent " automatically set indent of new line
set smartindent


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
set laststatus=2 " show the satus line all the time

"jaca- 
set inccommand=split

"80 char mark
"set textwidth=80
"set colorcolumn=80
highlight ColorColumn ctermbg=gray
"set tw=79	"width of text


set showcmd
set showmode


set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

""" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set a map leader for more key combos
let mapleader = ','

map <leader>ev :e! ~/.config/nvim/init.vim<cr> " edit ~/.vimrc

map <leader>wc :wincmd q<cr>
""" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

" jaca-
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
""" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

map <leader>s <esc>:w<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-h> <ESC>:wincmd h<cr>
map <C-j> <esc>:wincmd j<cr>
map <C-k> <esc>:wincmd k<cr>
map <C-l> <esc>:wincmd l<cr>
" map <C-h> :call WinMove('h')<cr>
" map <C-j> :call WinMove('j')<cr>
" map <C-k> :call WinMove('k')<cr>
" map <C-l> :call WinMove('l')<cr>
"
""" Window movement shortcuts
""" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    " if (t:curwin == winnr())
    "     if (match(a:key,'[jk]'))
    "         wincmd v
    "     else
    "         wincmd s
    "     endif
    "     exec "wincmd ".a:key
    " endif
endfunction

if has("autocmd")
	augroup templates
	"	autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
	"	autocmd BufNewFile *.s 0r ~/.vim/templates/skeleton.as
	"	autocmd BufNewFile Makefile 0r ~/.vim/templates/skeleton.makefile
		"autocmd BufNewFile *.h call LoadMyClass()
	augroup END

	augroup myvimrchooks
		au!
		"autocmd bufwritepost .vimrc source ~/.vimrc
		autocmd bufwritepost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim
		autocmd bufwritepost ~/dotfiles/.nvimrc source ~/dotfiles/.nvimrc
	augroup END

endif

" colorscheme delek
colo gruvbox
set background=dark
""""""        #############
" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
"	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	map <f2> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" vimling:
"	nm <leader>d :call ToggleDeadKeys()<CR>
"	imap <leader>d <esc>:call ToggleDeadKeys()<CR>a
"	nm <leader>i :call ToggleIPA()<CR>
"	imap <leader>i <esc>:call ToggleIPA()<CR>a
"	nm <leader>q :call ToggleProse()<CR>

" Shortcutting split navigation, saving a keypress:
"	map <C-h> <C-w>h
"	map <C-j> <C-w>j
"	map <C-k> <C-w>k
"	map <C-l> <C-w>l

" Check file in shellcheck:
"	map <leader>s :!clear && shellcheck %<CR>

" Open my bibliography file in split
	" map <leader>b :vsp<space>$BIB<CR>
	" map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
	nnoremap S :%s//cg<Left><Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
"	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
"	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Enable Goyo by default for mutt writting
	" Goyo's width will be the line limit in mutt.
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo \| set bg=light

" Automatically deletes all trailing whitespace on save.
"	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and vifm configs with new material:
	autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"""LATEX
	" Word count:
	autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
	" Code snippets
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,bt {\blindtext}
	autocmd FileType tex inoremap ,nu $\varnothing$
	autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i

"""HTML
	autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
	autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
	autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
	autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
	autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
	autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
	autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
	autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
	autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
	autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
	autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
	autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
	autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
	autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
	autocmd FileType html inoremap &<space> &amp;<space>
	autocmd FileType html inoremap á &aacute;
	autocmd FileType html inoremap é &eacute;
	autocmd FileType html inoremap í &iacute;
	autocmd FileType html inoremap ó &oacute;
	autocmd FileType html inoremap ú &uacute;
	autocmd FileType html inoremap ä &auml;
	autocmd FileType html inoremap ë &euml;
	autocmd FileType html inoremap ï &iuml;
	autocmd FileType html inoremap ö &ouml;
	autocmd FileType html inoremap ü &uuml;
	autocmd FileType html inoremap ã &atilde;
	autocmd FileType html inoremap ẽ &etilde;
	autocmd FileType html inoremap ĩ &itilde;
	autocmd FileType html inoremap õ &otilde;
	autocmd FileType html inoremap ũ &utilde;
	autocmd FileType html inoremap ñ &ntilde;
	autocmd FileType html inoremap à &agrave;
	autocmd FileType html inoremap è &egrave;
	autocmd FileType html inoremap ì &igrave;
	autocmd FileType html inoremap ò &ograve;
	autocmd FileType html inoremap ù &ugrave;


""".bib
	autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>journal<Space>=<Space>{<++>},<Enter>volume<Space>=<Space>{<++>},<Enter>pages<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i
	autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>i
	autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i

"MARKDOWN
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
	autocmd Filetype markdown,rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype markdown,rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype markdown,rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

""".xml
	autocmd FileType xml inoremap ,e <item><Enter><title><++></title><Enter><guid<space>isPermaLink="false"><++></guid><Enter><pubDate><Esc>:put<Space>=strftime('%a, %d %b %Y %H:%M:%S %z')<Enter>kJA</pubDate><Enter><link><++></link><Enter><description><![CDATA[<++>]]></description><Enter></item><Esc>?<title><enter>cit
	autocmd FileType xml inoremap ,a <a href="<++>"><++></a><++><Esc>F"ci"
