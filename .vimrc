"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"Vundle says requires this option be enabled to work properly
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree plugin
Plugin 'scrooloose/nerdtree'

" Keybind to open NerdTree with Ctrl + n
map <C-n> :NERDTreeToggle<CR>

"CtrlP plugin
Plugin 'ctrlpvim/ctrlp.vim'

"Vim airline plugin + airline themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Enable solarized dark to be used in Vim airline
let g:airline_solarized_bg='dark'

"Set the theme of ViM airline to solarized
let g:airline_theme='solarized'

"Line numbers are good
set number

"Turn on syntax highlighting
syntax enable 

"To enable by default 256 colors in vim
set t_Co=256

"lots of command line history
set history=1000 

"All of your Plugins must be added before the following line
call vundle#end()            "required
filetype plugin indent on    "required
