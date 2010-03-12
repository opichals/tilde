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

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif
