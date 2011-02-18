" turn leader to ',' instead of the default '\'
let mapleader=" "

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

      " Command+T plugin binding
      map <Leader>t :CommandT <CR>

      " Make gvim bigger by default
      set columns=80 lines=53

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
set list listchars=tab:\ \ ,trail:·

" set number
set ruler

" make uses real tabs
au FileType make  set noexpandtab

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" Hide .lint* files from the netrw file listing for easier navigation
let g:netrw_list_hide='\.lint.*'
