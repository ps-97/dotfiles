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

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" searh down into subfolders
" Provides top-complerion for all file-related tasks
set path+=**

" Always source vimrc after saving
autocmd bufwritepost .vimrc source $MYVIMRC
" Edit vimrc on the fly
nmap <leader>v :tabedit $MYVIMRC<CR>
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
" Don't use spaces instead of tabs
set noexpandtab

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
" {{{1=> Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <C-S-]> gt
map <C-S-[> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins {{{1
" => Lightline {{{2
"  set noshowmode
"  set ttimeoutlen=50
" let g:lightline = {
" 		\ 'colorscheme': 'base16_ocean',
" 		\ 'separator': { 'left': '', 'right': '' },
" 		\ 'subseparator': { 'left': '', 'right': '' },
"         \ 'tabline': {
"         \   'left': [ ['bufferline'] ]
"         \ },
"         \ 'component_expand': {
"         \   'bufferline': 'LightlineBufferline',
"         \ },
"         \ 'component_type': {
"         \   'bufferline': 'tabsel',
"         \ },
"       	\ }
" 
" function! LightlineBufferline()
"   call bufferline#refresh_status()
"   return [ g:bufferline_status_info.before, g:bufferline_status_info.current, g:bufferline_status_info.after]
" endfunction
"}}}2
"}}}1


