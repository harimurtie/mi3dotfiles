"  ██████                           ██ ██   ██   ██      ██ ██    ██
" ░█░░░░██                         ░██░░   ░██  ░██     ░██░░    ░░
" ░█   ░██   ██████   ███████      ░██ ██ ██████░██     ░██ ██    ██  ██████
" ░██████   ░░░░░░██ ░░██░░░██  ██████░██░░░██░ ░██████████░██   ░██ ██░░░░██
" ░█░░░░ ██  ███████  ░██  ░██ ██░░░██░██  ░██  ░██░░░░░░██░██   ░██░██   ░██
" ░█    ░██ ██░░░░██  ░██  ░██░██  ░██░██  ░██  ░██     ░██░██ ██░██░██   ░██
" ░███████ ░░████████ ███  ░██░░██████░██  ░░██ ░██     ░██░██░░███ ░░██████
" ░░░░░░░   ░░░░░░░░ ░░░   ░░  ░░░░░░ ░░    ░░  ░░      ░░ ░░  ░░░   ░░░░░░
"
"           ██
"          ░░
"  ██    ██ ██ ██████████  ██████  █████
" ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
" ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"  ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"   ░░██   ░██ ███ ░██ ░██░███   ░░█████
"    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░


" ----------------------------------------------------------------------------
" BanditHijo's .vimrc
" dotfiles : https://github.com/bandithijo/dotfiles
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
set nocompatible              " be iMproved, required
"filetype off                  " required
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Plugin Manager {{{
" Plugin Manager : vim-plug
" Source : https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
Plug 'plasticboy/vim-markdown'

" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" A lightweight plugin to display the list of buffers in the lightline vim plugin
Plug 'mengelbrecht/lightline-bufferline'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'

" A simple, easy-to-use Vim alignment plugin.
Plug 'junegunn/vim-easy-align'

" A command-line fuzzy finder.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Better whitespace highlighting for Vim.
Plug 'ntpeters/vim-better-whitespace'

" fugitive.vim: A Git wrapper so awesome, it should be illegal.
Plug 'tpope/vim-fugitive'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" Vastly improved Javascript indentation and syntax support in Vim.
Plug 'pangloss/vim-javascript'

" rsi.vim: Readline style insertion (saya pakai untuk alt+delete: menghapus 1 kata).
Plug 'tpope/vim-rsi'

" surround.vim: quoting/parenthesizing made simple.
Plug 'tpope/vim-surround'

" ragtag.vim: ghetto HTML/XML mappings (formerly allml.vim)*
Plug 'tpope/vim-ragtag'

" Vim plugin that displays tags in a window, ordered by scope. with F8
Plug 'majutsushi/tagbar'

" one colorscheme pack to rule them all!
Plug 'flazz/vim-colorschemes'

" An extensible & universal comment vim-plugin that also handles embedded filetypes.
Plug 'tomtom/tcomment_vim'

" Vim plugin which provides sgml (xml, html, etc.) end tag completion. autoclose tag </
Plug 'ervandew/sgmlendtag'

" Make terminal vim and tmux work better together.
Plug 'tmux-plugins/vim-tmux-focus-events'

" Real-time markdown preview plugin for vim.
Plug 'iamcco/markdown-preview.vim'

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
Plug 'python-mode/python-mode', {'branch': 'develop'}

" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'

" A code-completion engine for Vim.
"Plug 'Valloric/YouCompleteMe'

" A vim plugin to display the indention levels with thin vertical lines.
Plug 'Yggdroot/indentLine'

" Vim Liquid runtime files with Jekyll enhancements.
Plug 'tpope/vim-liquid'

" Vim syntax for i3 window manager config.
Plug 'PotatoesMaster/i3-vim-syntax'

" Improvements to the handling of Django related files in Vim.
Plug 'tweekmonster/django-plus.vim'

" An up-to-date jinja2 syntax file.
Plug 'Glench/Vim-Jinja2-Syntax'

" A calendar application for Vim
Plug 'itchyny/calendar.vim'


call plug#end()
" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Basic {{{
" ----------------------------------------------------------------------------
syntax enable
filetype plugin indent on
set encoding=UTF-8
" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" General {{{
" ----------------------------------------------------------------------------
set backspace=indent,eol,start " make backspace a more flexible
"set backup " make backup files
"set backupdir=~/.vim/tmp/backup " where to put backup files
"set directory=~/.vim/tmp/swap " directory to place swap files in
"set undodir=~/.vim/tmp/undo " directory to place undo files in
"set undofile " make undo possible after the file is closed and reopened
set clipboard=unnamedplus " share clipboard
set hidden " you can change buffers without saving
set mouse=a " use mouse everywhere
set noerrorbells " don't make noise
set wildmenu " turn on command line completion wild style
set wildmode=full
set ttyfast " i have a fast terminal
set gdefault " global substitutions are default s/a/b/g
set ttimeoutlen=0  " make Esc work faster
set autoread " make vim monitor realtime changes to a file
"set cryptmethod=blowfish2
au CursorHold,CursorHoldI * checktime " auto update trigger when cursor stops moving
au FocusGained,BufEnter * :checktime " auto update trigger on buffer change or terminal focus
" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" VIM User Interface {{{
" ----------------------------------------------------------------------------
colorscheme solarized-bandit
set background=dark
set t_Co=256 " set terminal 256 color
set incsearch " incremental search aka search as you type
set hlsearch " highlight search matches
set ignorecase " ignore case
set smartcase " but when the query starts with upper character be case sensitive
set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines between rows
set nolist " show traling listchars
"set listchars=tab:▸\ ,eol:$,trail:¬,extends:❯,precedes:❮,nbsp:~
set nostartofline " don't move the cursor to first non-blank character after some command    s (:25 e.g.)
set novisualbell " don't blink
set relativenumber " turn on line numbers
set nu " turn on line number on selected line
set report=0 " tell us when anything is changed
set ruler " always show current positions along the bottom
set foldmethod=manual
set foldlevel=0 " default unfold when open a file
set shortmess=atToO " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set showmode " show current mode
set showmatch " show matching brackets
"set scrolloff=5 " keep 10 lines (top/bottom) for scope
"set sidescrolloff=10 " keep 5 lines at the size
set cursorline " visually mark current line
"set showbreak=↪ " indicate wrapped line
hi  clear ModeMsg " disable Color StatusLine on Insert Mode and Visual Mode
if &diff " change colorscheme when using vimdiff
  colorscheme solarized-bandit
  "colorscheme Tomorrow-Night-Bandit
endif
" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Text Formatting/Layout {{{
" ----------------------------------------------------------------------------
set wrap " wrap text
"set textwidth=79 " to 79 characters
set colorcolumn=79 " and warn me if my line gets over 85 characters
set formatoptions=cqt " see :help fo-table
set infercase " case inferred by default
set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, n    ot 5)
set expandtab " no real tabs please!
set shiftwidth=4 " auto-indent amount when using >> <<
set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see e    xpandtab)
set tabstop=4 " real tabs should be 4, and they will show with set list on
set autoindent
"set smartindent
set conceallevel=0
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " Highlight VCS conflict markers"
autocmd Filetype html setlocal shiftwidth=2 tabstop=2
autocmd Filetype htmldjango setlocal shiftwidth=2 tabstop=2 ft=jinja
autocmd Filetype html.django setlocal shiftwidth=2 tabstop=2 ft=jinja
autocmd Filetype jinja.html setlocal shiftwidth=2 tabstop=2 ft=jinja
autocmd Filetype jinja setlocal shiftwidth=2 tabstop=2
autocmd Filetype css setlocal shiftwidth=4 tabstop=4
autocmd Filetype python setlocal shiftwidth=4 tabstop=4
autocmd FileType liquid set conceallevel=0
autocmd FileType markdown let g:indentLine_enabled=0
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright
" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Keyboard Mappings {{{
" ----------------------------------------------------------------------------
" my leader key is comma
let mapleader = ","

" for edit my .vimrc
nmap <leader>ev :e ~/.vimrc<cr>

" for edit load my ssg blog writing guide (petunjuk penulisan)
nmap <leader>ed :e ~/dex/bandithijo.com/_drafts/2018-01-01-format-penulisan-post.md<cr>

" for move & delete buffer
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>d :bd<cr>

" this key combination gets rid of the search highlights
nmap <leader><space> :noh<cr>

" for clear highlight search
nmap <leader><space> :nohlsearch<cr>

" Ctags
nmap <leader>g <C-]>

" strip all trailing whitespace in the current file
nmap <leader>W :StripWhitespace<cr>

" open vertical split and switch to it
nnoremap <leader>w <C-w>v<C-w>l

" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set linebreak<CR>

" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Remap exit from terminal mode
tnoremap <Esc> <C-\><C-n>

" for search
nnoremap / /\v
vnoremap / /\v

" keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" another way to esc mode
imap jj <Esc>

" I hit F1 too often when reaching esc button
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" toggle NerdTree plugin
nmap <F12> :NERDTreeToggle<cr>

" for move focus to each split on NerdTree
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

" sudo save
cmap w!! w !sudo tee % >/dev/null

" for page up & page down
noremap <C-u> <C-u>zz
noremap <C-d> <C-d>zz

" toggle Tagbar plugin
nmap <F8> :TagbarToggle<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" toggle PymodeLintToggle
nmap <F10> :PymodeLintToggle<cr>

" fzf.vim
"nmap <leader>b :Buffers<cr>
nmap <C-p> :Buffers<cr>

" disable arrow keys on insert mode and make up & down arrow as line bubbling
"no <down> ddp
"nmap <down> ]e " handled by vim-unimpaired
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
"no <up> ddkP
"nmap <up> [e " handled by vim-unimpaired
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Code folding saved after exit vim
" augroup AutoSaveFolds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter *.* silent! loadview
" augroup END
" }}}
" ----------------------------------------------------------------------------


" ----------------------------------------------------------------------------
" Plugins Settings
" ----------------------------------------------------------------------------

" NerdTree {{{
" ----------------------------------------------------------------------------
let NERDTreeHijackNetrw = 1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"let g:NERDTreeDirArrowExpandable = ' '
"let g:NERDTreeDirArrowCollapsible = ' '
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'

" Disable arrow icons at the left side of folders for NERDTree.
let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"

" Width
let g:NERDTreeWinSize=35

" SignColumn
autocmd FileType nerdtree setlocal signcolumn=no
" }}}
" ----------------------------------------------------------------------------

" TagBar {{{
" ----------------------------------------------------------------------------
let g:tagbar_width = 35
" }}}
" ----------------------------------------------------------------------------

" Vim-DevIcons {{{
" ----------------------------------------------------------------------------
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
highlight! link NERDTreeFlags NERDTreeDir
" }}}
" ----------------------------------------------------------------------------

" emmet-vim trigger key remap {{{
" ----------------------------------------------------------------------------
let g:user_emmet_leader_key='<C-space>' " then press , (comma) to do magic !
" }}}
" ----------------------------------------------------------------------------

" LightLine {{{
" ----------------------------------------------------------------------------
let g:lightline = {
\   'colorscheme': 'solarized',
\   'active': {
\     'left':[ [ 'mode', 'paste' ],
\              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
\     ]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head',
\   }
\}
let g:lightline.separator = {
\   'left': '', 'right': ''
\}
let g:lightline.subseparator = {
\   'left': '', 'right': ''
\}
let g:lightline.tabline = {
\   'left': [ ['buffers'] ],
\   'right': [ ['string1'], ['string2'] ]
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers'
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel'
\}

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
" }}}
" ----------------------------------------------------------------------------

" LightLine-BufferLine {{{
" ----------------------------------------------------------------------------
let g:lightline#bufferline#unnamed = "[NO NAME]"
let g:lightline#bufferline#filename_modifier= ":."
let g:lightline#bufferline#more_buffers = "..."
let g:lightline#bufferline#modified = " +"
let g:lightline#bufferline#read_only = " -"
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#show_number = 0
let g:lightline#bufferline#enable_devicons = 0
let g:lightline#bufferline#unicode_symbols = 0
" }}}
" ----------------------------------------------------------------------------

" Rubycomplete {{{
" ----------------------------------------------------------------------------
let g:rubycomplete_rails=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_include_object=1
let g:rubycomplete_include_objectspace=1
" }}}
" ----------------------------------------------------------------------------

" Greplace {{{
" ----------------------------------------------------------------------------
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
" }}}
" ----------------------------------------------------------------------------

" pylint {{{
" ----------------------------------------------------------------------------
let g:syntastic_python_checkers = ['pylint']  "" or ['flake8', 'pylint'], etc
let g:syntastic_python_pylint_args = '-E'
"" to show it accepts a string of args, also:
" let g:syntastic_python_pylint_args = '--rcfile=/path/to/rc -E'
" }}}
" ----------------------------------------------------------------------------

" indentLine {{{
" ----------------------------------------------------------------------------
let g:indentLine_setColors = 1

" Vim
let g:indentLine_color_term = 0

"let g:indentLine_char = '┆'
let g:indentLine_char = '⎸'
let g:indentLine_leadingSpaceEnabled = 0
" }}}
" ----------------------------------------------------------------------------

" Markdown Preview {{{
" ----------------------------------------------------------------------------
let g:mkdp_path_to_chrome = "/usr/bin/firefox"
" path to the chrome or the command to open chrome(or other modern browsers)
" if set, g:mkdp_browserfunc would be ignored

let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" callback vim function to open browser, the only param is the url to open

let g:mkdp_auto_start = 0
" set to 1, the vim will open the preview window once enter the markdown
" buffer

let g:mkdp_auto_open = 0
" set to 1, the vim will auto open preview window when you edit the
" markdown file

let g:mkdp_auto_close = 1
" set to 1, the vim will auto close current preview window when change
" from markdown buffer to another buffer

let g:mkdp_refresh_slow = 1
" set to 1, the vim will just refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor

let g:mkdp_command_for_global = 0
" set to 1, the MarkdownPreview command can be use for all files,
" by default it just can be use in markdown file

" vim-markdown
let g:vim_markdown_conceal = 0

" Mapping for markdown-preview
" ----------------------------------------------------------------------------
"nmap <F10> <Plug>MarkdownPreview        " for normal mode
"imap <F10> <Plug>MarkdownPreview        " for insert mode
"nmap <F11> <Plug>StopMarkdownPreview    " for normal mode
"imap <F11> <Plug>StopMarkdownPreview    " for insert mode
" }}}
" ----------------------------------------------------------------------------

" FZF {{{
" ----------------------------------------------------------------------------
" # --color=[BASE_SCHEME][,COLOR:ANSI]
" fzf --color=bg+:24
" fzf --color=light,fg:232,bg:255,bg+:116,info:27
" }}}
" ----------------------------------------------------------------------------

" Python-Mode {{{
" ----------------------------------------------------------------------------
let g:pymode_python = 'python3'
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python"
" linter syntax checker : pylint, pycodestyle, pyflakes, pep8, flake8
let g:pymode_lint_checkers = ['pyflakes']
" }}}
" ----------------------------------------------------------------------------

" calendar {{{
" ----------------------------------------------------------------------------
"let g:calendar_frame = 'default'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" }}}
" ----------------------------------------------------------------------------


























" vim: ft=vim fdm=marker
