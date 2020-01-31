let mapleader=","

call plug#begin('c:/dev/vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

filetype plugin indent on
syntax on

set backspace=indent,eol,start
set ts=2
set shiftwidth=2
set number
set ignorecase
set backupcopy=yes

" diable beep and flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set guioptions-=T
set guioptions-=m
set guioptions+=c
set wildmenu wildmode=longest:full,full

" show always
set laststatus=2
" clear and LEFT part
set statusline=
set statusline+=%f
set statusline+=%m
" ......... RIGHT part
set statusline+=%=
" %y => filetype
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %l:%c
set statusline+=\ 


if has('gui_running')
	colo seoul256
  set guifont=Lucida_Console:h12:cANSI:qDRAFT
  set lines=42
  set columns=140
	set hlsearch
end

map <C-n> :NERDTreeToggle<CR>

