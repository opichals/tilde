" turn leader to ' ' instead of the default '\'
let mapleader=" "

"install VimPlug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'wincent/command-t'
Plug 'kchmck/vim-coffee-script'
Plug 'sgur/vim-editorconfig'

call plug#end()


set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Turn on modelines, since gentoo turns them off
set modeline

set incsearch		" do incremental searching

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch

  if &t_Co > 256 || has("gui_running")
      source $HOME/etc/vim-scripts/teal.vim

      " MacVIM shift+arrow-keys behavior (required in .vimrc)
      let macvim_hig_shift_movement = 1

      " Make gvim bigger by default
      set columns=80 lines=68

      set guifont=DejaVu\ Sans\ Mono:h14
      set guioptions=
  endif
endif

" Turn on better indenting
set noautoindent
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab

" Visible trailing whitespace
set list listchars=tab:\ \ ,trail:·

runtime macros/matchit.vim

" do 'cd /path' when editting '/path/name'
" if exists('+autochdir')
"    set autochdir
"else
"    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
"endif

" Display line numbers
" set number

" Terminal window title with the edited file
set title

set ruler

" command line-like completion
set wildmenu
set wildmode=list:longest

" Maintain more context around the cursor
set scrolloff=3

" make uses real tabs
au FileType make  set noexpandtab

" using jj/jk is easier to type than ESC or C-[ for leaving insert mode
inoremap jj <ESC>
inoremap jk <ESC>

" command-t to pwd
let g:CommandTTraverseSCM = 'pwd'
let g:CommandTFileScanner = 'find'

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

map <Leader>f :vimgrep <C-R>=expand("<cword>") . " **/*.js" <CR>

set tags=tags;/
map <Leader>d :tag <C-R>=expand("<cword>") <CR> <CR>

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" Hide .lint* files from the netrw file listing for easier navigation
let g:netrw_list_hide='\.lint.*'
