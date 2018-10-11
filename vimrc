execute pathogen#infect()
syntax on
filetype plugin indent on
let mapleader = ","
let maplocalleader = ","
set number
set showbreak=+++
set textwidth=100
set foldmethod=syntax
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set shiftwidth=4
set undolevels=1000
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set backspace=indent,eol,start
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:airline_powerline_fonts = 1
let g:airline_theme             = 'wombat'
let g:airline_enable_syntastic  = 1
set laststatus=2
set background=dark
set t_Co=256
colorscheme MountainDew
let g:SimpylFold_fold_import = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>
map <leader>ps :Gpush<CR>
map <leader>pl :Gpull<CR>
map <leader>sw :StripWhitespace<CR>
map <leader>tl :TlistToggle<CR>
map <leader>qf :make\|copen<CR>
