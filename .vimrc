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


let mapleader="'"

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
let NERDTreeQuitOnOpen=1

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
let g:ycm_confirm_extra_conf = 0
nnoremap <C-]> <C-w><C-]><C-w>T
nnoremap <Leader>] :YcmGenerateConfig<CR> <bar> :TagsGenerate!<CR>

" Easy Motion
Plug 'easymotion/vim-easymotion'
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_smartcase = 1
nmap <Leader>s <Plug>(easymotion-overwin-f)

" Ctags
Plug 'szw/vim-tags'

" TagBar
Plug 'majutsushi/tagbar'
nnoremap <F8> :TagbarToggle<CR>

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
highlight LineNr ctermbg=232                                                    
highlight nonText ctermbg=232 ctermfg=232                                       
highlight ColorColumn ctermbg=66


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
nnoremap <Space> gg=G''

" Settings
set timeoutlen=1000 ttimeoutlen=0
set exrc
set secure
nnoremap j gj
nnoremap k gk
set nobackup
set noswapfile
