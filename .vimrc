set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set number
set relativenumber
set nobackup
set ignorecase
set linebreak
set wrap
set noswapfile
set incsearch
set showmatch
set hlsearch
set hls!
set showcmd
set history=1000
set wildmenu
set wildmode=list:longest
set mouse=v
set clipboard=unnamed
set fileformat=unix
set encoding=UTF-8
set background=dark
nnoremap <Leader>cc :set colorcolumn=80<cr>

call plug#begin()
filetype indent off
syntax off
Plug 'stefanvanburen/rams.vim'
call plug#end()

set diffopt+=iwhite,vertical
set fileformat=unix
set statusline+=%#warningmsg#
set statusline+=%*
colorscheme rams
autocmd BufRead *.md syn match markdownError "\w\@<=\w\@="
highlight LineNr ctermfg=grey

let &t_SI = "\e[1 q"   " cursor in insert mode
let &t_EI = "\e[2 q"   " cursor in normal mode
let &t_SR = "\e[3 q"   " cursor in replace mode
let &t_ti .= "\e[2 q"  " cursor when vim starts
let &t_te .= "\e[3 q"  " cursor when vim exits
set backspace=indent,eol,start  " more powerful backspacing
