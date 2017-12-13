"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                           "                
"                                                                                           "   
"                                                                                           "
"                                                                                           "
"                                                                                           "
" __   _____ __  __        __   ___   ___ __  __                         _   ___   __       "
" \ \ / /_ _|  \/  |  ___  \ \ / (_) |_ _|  \/  |_ __ _ _ _____ _____ __| | ( _ ) /  \      "
"  \ V / | || |\/| | |___|  \ V /| |  | || |\/| | '_ \ '_/ _ \ V / -_) _` | / _ \| () |     "
"   \_/ |___|_|  |_|         \_/ |_| |___|_|  |_| .__/_| \___/\_/\___\__,_| \___(_)__/      "
"                                               |_|                                         "
"                                                                                           "
"                                                                                           "
"                                                                                           "
"                                                                                           "
"                                                                                           "
" Sections:
"
"    -> General
"    -> Plugins
"    -> Colors and Fonts
"    -> Misc
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" Sets how many lines of history VIM has to remember
set history=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" Vim Multiple Cursors plugin, Sublime Text's awesome multiple selection feature into Vim. 
Plugin 'terryma/vim-multiple-cursors'

"Ctrl-n, Ctrl-p, Ctrl-x, and <Esc> are mapped in the special multicursor mode once you've added at least one virtual cursor to 
"the buffer. If you don't like the plugin taking over your favorite key bindings, you can turn off the default with:

let g:multi_cursor_use_default_mapping=0

"You can then map the 'next'(Siguiente), 'previous'(Anterior), 'skip'(<E>scapar), and 'exit(' keys like the following:

let g:multi_cursor_next_key='<A-n>'
let g:multi_cursor_prev_key='<A-p>'
let g:multi_cursor_skip_key='<A-x>'
let g:multi_cursor_quit_key='<Esc>'

"By default, the 'next' key is also used to enter multicursor mode. If you want to use a different key to start multicursor mode than for selecting the next location, do like the following:

" Map start key separately from next key
let g:multi_cursor_start_key='<F6>'

"CtrlP plugin
Plugin 'ctrlpvim/ctrlp.vim'

"Vim airline plugin + airline themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Enable solarized dark to be used in Vim airline
let g:airline_solarized_bg='dark'

"Set the theme of ViM airline to solarized
let g:airline_theme='solarized'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Line numbers are good
set number

"Turn on syntax highlighting
syntax enable 

"To enable by default 256 colors in vim
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"All of your Plugins must be added before the following line
call vundle#end()            "required
filetype plugin indent on    "required
