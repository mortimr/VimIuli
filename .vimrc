"  ██▒   █▓ ██▓ ███▄ ▄███▓ ██▓    ▓█████  ██▓    
" ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██▒    ▓█   ▀ ▓██▒    
"  ▓██  █▒░▒██▒▓██    ▓██░▒██░    ▒███   ▒██░    
"   ▒██ █░░░██░▒██    ▒██ ▒██░    ▒▓█  ▄ ▒██░    
"    ▒▀█░  ░██░▒██▒   ░██▒░██████▒░▒████▒░██████▒
"    ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒░▓  ░░░ ▒░ ░░ ▒░▓  ░
"    ░ ░░   ▒ ░░  ░      ░░ ░ ▒  ░ ░ ░  ░░ ░ ▒  ░
"      ░░   ▒ ░░      ░     ░ ░      ░     ░ ░   
"       ░   ░         ░       ░  ░   ░  ░    ░  ░
"      ░                                         


" Vim Plugged
call plug#begin('~/.vim/plugged')

" Epitech
Plug 'LeBarbu/vim-epitech'
let g:epi_login = 'rotaru_i'
let g:epi_name = 'ROTARU Iulian'
nnoremap <F12> :EpiHeader<CR>

" NERDTree
Plug 'scrooloose/nerdtree'
noremap <F2> :NERDTreeToggle<CR>
nnoremap <C-M> :NERDTreeFocus<CR>

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

" GitGutter
Plug 'airblade/vim-gitgutter'
set updatetime=250
let g:gitgutter_sign_column_always = 1

" YCM
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
let g:ycm_global_ycm_extra_conf = '~/.vimymc'

call plug#end()
" Style
colorscheme wombat256
syntax enable
set scrolloff=5
set ruler
set number
set cursorline
set colorcolumn=80
set list
set relativenumber
hi Normal ctermbg=234
hi MatchParen cterm=bold ctermfg=red
highlight CursorLine ctermbg=238

" Tabulations
set smartcase
set autoindent smartindent
set smarttab
set tabstop=8
set noexpandtab
set listchars=tab:··
set backspace=eol,start,indent
set autoindent
set shiftwidth=2
set softtabstop=2

" KeyBindings
inoremap <Up>	<NOP>
inoremap <Down>	  <NOP>
inoremap <Left>	  <NOP>
inoremap <Right>  <NOP>
noremap  <Up>	<NOP>
noremap  <Down>	  <NOP>
noremap  <Left>	  <NOP>
noremap  <Right>  <NOP>
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>

" Settings
set timeoutlen=1000 ttimeoutlen=0

