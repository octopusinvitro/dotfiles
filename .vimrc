syntax on
set showmatch
set listchars=tab:>-,trail:█,extends:>,precedes:<
set list
set number
set autoindent
set noswapfile
" set cursorline

" leader is usually \ but , is easier to reach
let mapleader = ","


" tabs
set expandtab
set tabstop=2
set shiftwidth=2
set expandtab

" line breaks
set wrap
set linebreak
set nolist " list disables linebreak
set textwidth=0
set wrapmargin=0

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


" set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWritePre * :%s/\s\+$//e " Delete trailing spaces on write

" highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
highlight LineLengthError ctermbg=black guibg=black
autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

" pathogen
execute pathogen#infect()
filetype plugin indent on

" nerdtree
nmap <leader><leader> :NERDTreeToggle<CR>
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>

" ctrl p
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Fix the capital W annoyance
:command WQ wq
:command Wq wq
:command W w
:command Q q



nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" shell out (:!), clear and run tests with <leader>t
:map <leader>t :!clear;bundle exec rspec --color<CR>

" easier movement between splits with Ctrl + h j k l
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
