" (N)Vim Configuration File
" vim  : place in $HOME/.vimrc
" nvim : place in $HOME/.config/nvim/init.vim
"
" Settings in this file may depend on plugins, so let's install them first.
" Not to be confused with the contents of ~/.vim/plugin/* which are
" configuration options for each plugin and automatically loaded by Vim.
source ~/.config/nvim/plugin/plugins.vim

" ---------------------------------------------------------------------------
" Shortcuts
" ---------------------------------------------------------------------------
nmap LB 0
nmap LE $

" Easy tab navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" ---------------------------------------------------------------------------
" Leader Mappings
" ---------------------------------------------------------------------------
let mapleader=" " " default <Leader> is \

vnoremap <Leader>y "+y                " 设置快捷键将选中文本块复制至系统剪贴板
nmap <Leader>p "+p                    " 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>q :q<CR>                 " 定义快捷键关闭当前分割窗口
nmap <Leader>w :w<CR>                 " 定义快捷键保存当前窗口内容
nmap <Leader>WQ :wa<CR>:q<CR>         " 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>Q :qa!<CR>               " 不做任何保存，直接退出 vim
nnoremap nw <C-W><C-W>                " 依次遍历子窗口
nnoremap <Leader>lw <C-W>l            " 跳转至右方的窗口
nnoremap <Leader>hw <C-W>h            " 跳转至左方的窗口
nnoremap <Leader>kw <C-W>k            " 跳转至上方的子窗口
nnoremap <Leader>jw <C-W>j            " 跳转至下方的子窗口
nmap <Leader>M %                      " 定义快捷键在结对符之间跳转
map <Leader>H :history<CR>            " Recently edited files

"-------------------------------------------------------------------------------
" Colors & Formatting
"-------------------------------------------------------------------------------

colorscheme solarized
set background=dark

filetype indent on

" ---------------------------------------------------------------------------
" Generall Settings
" ---------------------------------------------------------------------------
"
syntax on                             " Syntax highlight
set number                            " Enable line numbers
set scrolloff=5                       " Leave 5 lines of buffer when scrolling
set sidescrolloff=10                  " Leave 10 characters of horizontal buffer when scrolling
set encoding=utf-8

set relativenumber
set ruler
set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
set wildmode=full                     " 
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set laststatus=2                      " Show status line on startup
set splitright                        " Open new splits to the right
set splitbelow                        " Open new splits to the bottom
set lazyredraw                        " Reduce the redraw frequency
set ttyfast                           " Send more characters in fast terminals
set nowrap                            " Don't wrap long lines
set listchars=extends:→               " Show arrow if line continues rightwards
set listchars+=precedes:←             " Show arrow if line continues leftwards
set nobackup nowritebackup noswapfile " Turn off backup files
set noerrorbells novisualbell         " Turn off visual and audible bells
set shiftwidth=2 tabstop=2            " Two spaces for tabs everywhere
set expandtab
set smartindent
set softtabstop=4
set autoindent
set foldmethod=syntax
set history=500
set hlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set showcmd                           " Show size of visual selection
