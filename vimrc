set nocompatible          " get rid of Vi compatibility mode. SET FIRST!

" START PLUGINS
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
Plug 'mattn/emmet-vim'  " HTML helper
Plug 'altercation/vim-colors-solarized' "Styling
Plug 'Lokaltog/vim-powerline' "POWERLINE
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'digitaltoad/vim-pug'
call plug#end()
" END PLUGINS

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
set background=light
let g:solarized_termcolors=256
colorscheme solarized     " set colorscheme
set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
set cursorcolumn
set cursorline

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Emmet config:
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall "Only allow Emmett on css and html


nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR> 
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>

map <C-m> :NERDTreeToggle<CR>
