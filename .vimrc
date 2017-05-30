set nocompatible
filetype off

"vinilla vim stuff
set path+=**
set wildmenu

"here be dragons .. and pluging stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'VundleVim/Vundle.vim'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

"allow pluging to use repeat
Plugin 'tpope/vim-repeat'

" vim fugitive
Plugin 'tpope/vim-fugitive'

"surond: allows changeing of quotes to double quotes
Plugin 'tpope/vim-surround'

"rust auto complete
Plugin 'rust-lang/rust.vim'

"completion for python ect
"recompile for C GO or Node support or if you update
Plugin 'Valloric/YouCompleteMe'

"python auto complete - might conflict wirh YCM
"Plugin 'davidhalter/jedi-vim'


"snipmate adds snipits for all languages
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'

"match tages always 
"Plugin 'Valloric/MatchTagAlways'

"ctrl-p fuzzy file search
 Plugin 'ctrlpvim/ctrlp.vim'

"ack search
Plugin 'mileszs/ack.vim' 

" color sceme changer
Plugin 'flazz/vim-colorschemes'

" clean up code with ctrl f
Plugin 'maksimr/vim-jsbeautify'

"save vim session with tmux resurect
Plugin 'tpope/vim-obsession'


"note taking program for vim
Plugin 'vimwiki/vImwIkI'


" All of your Plugins must be added before the following line
call vundle#end()            " required

" Now we can turn our filetype functionality back on
filetype plugin indent on


set foldmethod=marker  
set foldnestmax=10
set nofoldenable
set foldlevel=2

" TODO: Pick a leader key
 let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap : ;
" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" easier moveing of code blocks
vnoremap < <gv "better indent
vnoremap > >gv "better

"my mappings
nnoremap <leader>nt :NERDTree <cr>
nnoremap <leader>p :CtrlP <cr>


"toggle between relatev and abs numbers

"color scheme
colorscheme astronaut

 nnoremap <leader>ln  :set rnu! <cr>

 nnoremap <leader>s  :set spell spelllang=en_us ! <cr>

"cycle buffers 

:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

"beatuify js
".vimrc
map <c-f> :call JsBeautify()<cr>
"" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
 autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" " for jsx
 autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" " for html
 autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" " for css or scss
 autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
