filetype plugin indent on
set expandtab ts=2 sw=2 ai
set number
let mapleader=" "
set backspace=indent,eol,start
set relativenumber
set clipboard=unnamed

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set omnifunc=syntaxcomplete#Complete

" swapfiles directory
:set directory=~/.vim/.swp//
:set undodir=~/.vim/.undo//
:set backupdir=~/.vim/.backup//

" searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Fix slow O inserts
set timeout timeoutlen=1000 ttimeoutlen=100

" enter reruns last command
nnoremap <CR> :wa<CR>:!!<CR>

" faster screen redraw
set ttyfast

" ctags
map <Leader>ct :!ctags -R --exclude=.git --exclude=log --exclude=.svn --verbose=yes * <CR>

" remap esc
inoremap jj <Esc>

" remap tabs
nnoremap <Tab> :tabn<CR>

" proper copying
noremap Y "+y

" Vim Plugin Settings start here
"
" vim ale for async linting
" set specific linters
let g:ale_linters = {
      \  'ruby': ['rubocop']
      \}

" only run linters that are specified above (save cpu)
let g:ale_linters_explicit = 1

" vim-airline
" enable ale integration
let g:airline#extensions#ale#enabled = 1 

" vim-auto-save
let g:auto_save = 1

"Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  "     " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_root_markers = ['Gemfile']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" vim-test
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
let test#python#nosetests#options = '--rednose'
let test#python#runner = 'nose'

" Open NERDTree with [<leader>d]
map <Leader>d :NERDTreeToggle<CR>

" " Show current file in the NERDTree hierarchy
map <Leader>D :NERDTreeFind<CR>

