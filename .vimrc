"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins {{{1
" => vim-plug {{{2
call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'
Plug 'takac/vim-hardtime'

" IDE like
Plug 'w0rp/ale'

" Autocopletion
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

" Python
Plug 'hynek/vim-python-pep8-indent'

" Javascript
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'

" Solidity
Plug 'tomlion/vim-solidity'

call plug#end()
"}}}2
"=> NerdTree{{{2
map <C-n> :NERDTreeToggle<CR>

" Close vim when there is no other window than NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Make it pretty
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


" Open NERDTree automatically when vim starts up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Statusline
let g:NERDTreeStatusline = 'File Browser'
"}}}2
" => coc {{{2
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
"set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"}}}2
" => ALE & misc {{{2
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1

let g:indentLine_char = '¦'
let g:indentLine_setColors = 0

"}}}2
" => Airline {{{2
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace = 1
"}}}2
" => ctrlP {{{2
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
"}}}2
" => Snippet {{{2
" }}}2
"}}}1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" base-16{{{1
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif
"}}}1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Initialization {{{1
"
"vim: set foldenable, foldmethod=marker, foldlevel=0

"}}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{1=> General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<Space>"

" Fast saving
nmap <leader>w :w!<cr>

" Set sytem clipboard
"set clipboard=unnamedplus

" :W sudo saves the file
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" Edit vimrc on the fly
nmap <leader>v :tabedit $MYVIMRC<CR>

" Enable project specific vimrc
set exrc

" Turn of beep
set belloff=all
" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{1=> VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

"Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Set relative number
set relativenumber
set numberwidth=1
set number
let g:airline_powerline_fonts = 1
" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{1=> Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Access colors present in 256 colorspace
let base16colorspace=256

" Enable 256 colors palette
set t_Co=256

" Color scheme
colorscheme base16-ocean
"
" Set dark background
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{1=> Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{1=> Moving around, tabs, windows, buffers and Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Finding files
" searh down into subfolders
" Provides top-complerion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" File browsing using netrw
let g:netrw_banner=0		" disable banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1			" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_winsize = 15
" }}}1

""""""""""""""""""""""""""""""
" {{{1=> Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
set showtabline=2
" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{1=> Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{1=> Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>


" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding {{{1
if has("folding")
	set foldenable " Enable folding
	set foldmethod=marker " Use markers to specify folds

	" Mapping {{{2
	" Use Syntax Folding
	nmap <Leader>fs <Esc>:set foldmethod=syntax<CR>
	" Use Marker Folding
	nmap <Leader>fm <Esc>:set foldmethod=marker<CR>
	" }}}2
endif
" }}}1

"=> Autocmd {{{1
" Set maximum column for python
au BufRead,BufNewFile *.py setlocal colorcolumn=79
"}}}1

"let g:hardtime_default_on = 1
