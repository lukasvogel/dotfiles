filetype off

" terminal colors
"set t_Co=16
set t_Co=256

if has('vim_starting')
    set nocompatible    " Disable vi-compatibility
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

""" NeoBundle plugins 
" By default fom github.
" Install and update with :NeoBundleInstall(!), see :h NeoBundle

" let NeoBundle manage Vundle. Required!
NeoBundle 'Shougo/neobundle.vim'

" more functional statusline
"NeoBundle 'Lokaltog/vim-powerline'
"NeoBundle 'Lokaltog/powerline'
NeoBundle 'bling/vim-airline'

" file system browser
NeoBundle 'scrooloose/nerdtree'

" syntax checking plugin
NeoBundle 'scrooloose/syntastic'

" fuzzy file, buffer, and tag finder
NeoBundle 'kien/ctrlp.vim'

" colorschemes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'chriskempson/vim-tomorrow-theme'

" modify surrounding characters in pairs
NeoBundle 'tpope/vim-surround'

" git wrapper. Reset changes with :Gread, stage changes with :Gwrite
NeoBundle 'tpope/vim-fugitive'

" Show which line changed since last git commit
NeoBundle 'airblade/vim-gitgutter'

" dispatch.vim for :Make
NeoBundle 'tpope/vim-dispatch'

" browse buffers (vim.org/scripts), \be, \bs, \bv
NeoBundle 'bufexplorer.zip'

" Vim-LaTeX suite
"NeoBundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
NeoBundle 'LaTeX-Box-Team/LaTeX-Box'

" Use <Tab> to autocomplete in insert mode
NeoBundle 'ervandew/supertab'

" Ack is a grep replacement. Debian pkg: ack-grep. Run from Vim:
" usage: :Ack [options] {pattern} [{directory}]
NeoBundle 'mileszs/ack.vim'

" Rainbow parantheses
NeoBundle 'kien/rainbow_parentheses.vim'

" Calendar
"NeoBundle 'itchyny/calendar.vim'
"let g:calendar_google_calendar = 1
"let g:calendar_google_task = 1

" ctags list (:TlistOpen)
NeoBundle 'taglist.vim'

" vim-OrgMode
NeoBundle 'jceb/vim-orgmode'

" increment dates and times with Ctrl-a and Ctrl-x
NeoBundle 'tpope/vim-speeddating'

" support for Julia
NeoBundle 'JuliaLang/julia-vim'

" SnipMate for boilerplate code
NeoBundle 'msanders/snipmate.vim'

" vim motion on speed
NeoBundle 'Lokaltog/vim-easymotion'

" navigate between vim and tmux panes seamlessly
NeoBundle 'christoomey/vim-tmux-navigator'

" Take notes in rst
"NeoBundle 'Rykka/clickable.vim'
"NeoBundle 'Rykka/riv.vim'
"NeoBundle 'Rykka/InstantRst'

" add/remove bookmark: mm
" add/edit/remove annotation: mi
" next bookmark: mn
" previous bookmark: mn
" list of all bookmarks: ma
" clear all bookmarks in current buffer: mc
" clear all bookmarks in all buffers: mx
NeoBundle 'MattesGroeger/vim-bookmarks'

" QC, QX, QV to copy, cut and paste from system clipboard
NeoBundle 'NLKNguyen/copy-cut-paste.vim'

" Python mode
NeoBundle 'klen/python-mode'

" vimproc for asynchronous processes
NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'wimdows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'unix' : 'make -f make_unix.mak',
            \   },
            \ }
" Unite for search, uses ag (Debian package silversearch-ag)
NeoBundle 'Shougo/unite.vim'

" insert unicode characters with latex code
NeoBundle 'joom/latex-unicoder.vim'

" search for text in files
NeoBundle 'rking/ag.vim'

" Align things in columns (select, type Return then Space)
NeoBundle 'junegunn/vim-easy-align'

" open file manager (gof) or tmux pane (got) at current dir
NeoBundle 'justinmk/vim-gtfo'

" <C-y>,
" http://www.vim.org/scripts/script.php?script_id=2981
" http://emmet.io
NeoBundle 'mattn/emmet-vim'

" javascript plugins
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'

" spacemacs keybinds
"NeoBundle 'jimmay5469/vim-spacemacs'

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup, this will prompt you to
" install them
NeoBundleCheck

" Enable syntax highligting
syntax on

" Select non-default syntax colorscheme. Found in /usr/share/vim/vim72/colors/
set background=dark " adjust colors for better contrast
"colorscheme desert
colorscheme solarized
"colorscheme Tomorrow-Night-Eighties
call togglebg#map("<F3>")
"let g:solarized_termtrans = 1
"let g:airline_theme = 'ubaryd'
let g:airline_theme = 'solarized'
"let g:airline_theme = 'tomorrow'
highlight Search     cterm=NONE  ctermfg=black ctermbg=2
highlight MatchParen cterm=NONE  ctermfg=255   ctermbg=199
highlight SpecialKey ctermfg=250 ctermbg=NONE  cterm=NONE
highlight NonText    ctermfg=250 ctermbg=NONE

" hilight column 80
set textwidth=80
set colorcolumn=+1

set autoindent
set autoread        " reload files when changed on disk
set backspace=2     " fix broken backspace in some setups
set backupcopy=yes  " see :help crontab
"set clipboard=unnamed " yank and paste with the system clipboard
set cursorline      " highlight current line
set encoding=utf-8  " Necessary to show unicode glyphs
set expandtab       " convert tab char to spaces
set hlsearch        " highlight search matches
set ignorecase      " case-insensitive search
set incsearch       " search as you type
set laststatus=2    " always show the statusline
set list            " enable rendering of invisible characters
set listchars=tab:▸\ ,eol:¬ " Use symbols for tab and end-of-line
set number          " set linenumbering ON as default
"set relativenumber  " set relative linenumbering ON as default
set pastetoggle=<F2> " toggle paste mode
set ruler           " Enable bottom ruler
set scrolloff=3     " show context above-below cursorline
set shiftwidth=4    " width for autoindents
"set showcmd
set smartcase       " case-sensitive search if any caps
set softtabstop=4   " makes the tab key indent by four spaces 
set splitright      " new vertical splits on the right side
set tabstop=4       " a tab is 4 characters wide
set wildmenu        " show a navigable menu for tab completion
set wildmode=longest,list,full

" enable basic mouse behavior
set mouse=a
if exists('$TMUX')    " support resizing in tmux
  set ttymouse=xterm2
endif

" fix cursor in tmux
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" vim-airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Powerline symbols, fancy needs a patched/edited font
"let g:Powerline_symbols = 'unicode'
"let g:Powerline_symbols = 'fancy'

" use airline decorations for tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#buffer_min_count = 2

" Rainbow parantheses always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Dictionary word completion using Ctrl-x Ctrl-k
" File from wordlist- (debian) or word- (arch) package
set dictionary+=/usr/share/dict/words

" Define other file types
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
autocmd! BufNewFile,BufRead *.cuh setlocal ft=cuda

" Invisible character colors
" chose ctermfg=10 if Tab and EOL characters should be brighter
" chose ctermfg=0 if Tab and EOL characters should be darker
highlight NonText ctermfg=10 guifg=DarkGray
highlight SpecialKey ctermfg=10 guifg=DarkGray
"highlight NonText ctermfg=0 guifg=DarkGray
"highlight SpecialKey ctermfg=0 guifg=DarkGray


""" Keyboard shortcuts

" Save with ZX
nmap ZX :w<CR>

" use , instead of \ as leader
"let mapleader=","
" use space instead of \ as leader
let mapleader="\<Space>"

" Shortcut to reload .vimrc
nmap <leader>r :source $MYVIMRC<CR>

" Shortcut to switch background color
nmap <leader>W :ToggleBG<CR>

" Save file
nmap <Leader>w :w<CR>
nmap <Leader>fs :w<CR>

" Quit
nmap <Leader>q :q<CR>

" Save and quit
nmap <Leader>x :x<CR>

" Jump to previous buffer
nmap <leader><tab> <C-^>

" Explore buffers
nmap <leader>b :BufExplorer<CR>

" toggle spelling
nmap <leader>s :set spell!<CR>

" toggle line numbering
nmap <leader>n :set number!<CR>

" toggle relative line numbering
nmap <leader>N :set relativenumber!<CR>

" NERD Tree short cut
nmap <leader>d :NERDTreeToggle<CR>

" Toggle TAB and EOL symbols
nmap <leader>l :set list!<CR>

nmap <leader>e :e 
nmap <leader>% :vsplit 
nmap <leader>" :split 

" shortcuts to commonly used files
nmap <leader>C :e $MYVIMRC<CR>
nmap <leader>T :e ~/doc/todo.org<CR>
nmap <leader>B :e ~/articles/own/BIBnew.bib<CR>
nmap <leader>A :e ~/articles/articles.rst<CR>

" insert date and time
nmap <leader>D :read !date<CR>

" job execution
nmap <leader>m :Make 
nmap <leader>E :VimProcRead 
nmap <leader>! :Start! 


" Switch split focus with leader+hjkl
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" equal split size
nmap <leader>= <C-w>=

" Commit all changes
"nmap <leader>g :Gcommit<CR>
nmap <leader>g :Start git commit -a -v<CR>
nmap <leader>G :Start git commit -a -v && git push<CR>

" Toggle fold
nmap <leader>f za
" Toggle all folds
nmap <leader>F zA
nmap <leader>Fa zR
nmap <leader>FA zM
" zc: close a fold
" zo: open a fold
" za: toggle a fold
" zM: close all folds
" zR: open all folds

" Switch split focus with <C-h>, <C-j>, <C-k> and <C-l>
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

" Use home row keys as Esc
inoremap jk <Esc>

" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>

" check current folder and all parent folders for tags files
set tags=tags;/

" Update ctags
nmap <leader>c :Start ctags -R --python-kinds=-i --langmap=c++:.cu,c++:.cuh .<CR>
" useful tags commands:
" :tag or :ta <function> Go to definition of the function
" :ts or :tselect Show the list of tags
" When the cursor is on a function call, press <Ctrl-[> to go to its definition.
" Press <Ctrl-t> to go back
" Use the Ctrl-P plugin to search the tags
nmap <leader>t :CtrlPTag<CR>
nmap <leader>p :CtrlPBuffer<CR>
nmap <leader>O :CtrlPMRUFiles<CR>
nmap <leader>o :CtrlP<CR>

" use git or silver searcher (ag) for CtrlP autocompletion
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
                \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
                \ }
endif

" Copy and paste to system clipboard with <Space>v and <Space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>v "+p
nmap <Leader>V "+P
vmap <Leader>v "+p
vmap <Leader>V "+P

" Launch Ack
"nmap <leader>a :Ack 

" reStructuredText bindings
augroup filetypedetect_rst
    au!
    " Headings
    " Use <C-e>s1 to <C-e>s4 in insert mode
    " Use <C-e>hs to view document sections
    " Use <C-e>cc to insert table of contents
    "au FileType rst nnoremap <leader>h1 ^yypv$r=o<cr><esc>
    "au FileType rst inoremap <leader>h1 <esc>^yypv$r=o<cr>
    "au FileType rst nnoremap <leader>h2 ^yypv$r-o<cr><cr><cr><cr><cr><cr><esc>kkkk
    "au FileType rst inoremap <leader>h2 <esc>^yypv$r-o<cr><cr><cr><cr><cr><cr><esc>kkkki
    "au FileType rst nnoremap <leader>h3 ^yypv$r+o<cr><cr><cr><cr><cr><cr><esc>kkkk
    "au FileType rst inoremap <leader>h3 <esc>^yypv$r+o<cr><cr><cr><cr><cr><cr><esc>kkkki
    "au FileType rst nnoremap <leader>h4 ^yypv$r~o<cr><cr><cr><cr><cr><cr><esc>kkkk
    "au FileType rst inoremap <leader>h4 <esc>^yypv$r~o<cr><cr><cr><cr><cr><cr><esc>kkkki
    "au FileType rst nnoremap <leader>h5 ^yypv$r*o<cr><cr><cr><cr><cr><cr><esc>kkkk
    "au FileType rst inoremap <leader>h5 <esc>^yypv$r*o<cr><cr><cr><cr><cr><cr><esc>kkkki

    " On list lines, press <C-e>ee to toggle state

    """Make Link (ml)
    " Use <C-e>ck to make a link
    " Highlight a word or phrase and it creates a link and opens a split so
    " you can edit the url separately. Once you are done editing the link,
    " simply close that split.
    "au FileType rst vnoremap <leader>ml yi`<esc>gvvlli`_<esc>:vsplit<cr><C-W>l:$<cr>o<cr>.. _<esc>pA: http://TODO<esc>vb

    """Make footnote (ml)
    "au FileType rst iabbrev mfn [#]_<esc>:vsplit<cr><C-W>l:$<cr>o<cr>.. [#] TODO
    " Enable spelling by default
    "au FileType rst set spell

    "Create image
    "au FileType rst iabbrev iii .. image:: TODO.png<cr> :scale: 100<cr>:align: center<cr><esc>kkkeel

    "Create figure
    "au FileType rst iabbrev iif .. figure:: TODO.png<cr> :scale: 100<cr>:align: center<cr>:alt: TODO<cr><cr><cr>Some brief description<esc>kkkeel

    "Create note
    au FileType rst iabbrev nnn .. note::

    "Start or end bold text inline
    "au FileType rst inoremap <leader>bb **

    "Start or end italicized text inline
    "au FileType rst inoremap <leader>ii *

    "Start or end preformatted text inline
    "au FileType rst inoremap <leader>pf ``

    " Fold settings
    "au FileType rst set foldmethod=marker
    "
    " Admonitions
    au FileType rst iabbrev adw .. warning::
    au FileType rst iabbrev adn .. note::

augroup END

" adjust signcolumn appearance
let g:syntastic_error_symbol = 'e'
let g:syntastic_warning_symbol = 'w'
highlight clear SignColumn

" LaTeX unicode symbols
let g:unicoder_cancel_normal = 1
let g:unicoder_cancel_insert = 1
let g:unicoder_cancel_visual = 1
nnoremap <C-l> :call unicoder#start(0)<CR>
inoremap <C-l> <Esc>:call unicoder#start(1)<CR>
vnoremap <C-l> :<C-u>call unicoder#selection()<CR>

" Search
let g:unite_source_history_yank_enable = 1
try
    let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <leader>a :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <leader>R <Plug>(unite_restart)

" search for text in many files
nmap <leader>A :Ag <c-r>=expand("<cword>")<cr><cr>
" search for text in project files
nnoremap <space>/ :Ag 

" align things into columns interactively
vnoremap <silent> <Enter> :EasyAlign<cr>

" Python mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>B'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Enable emmet in all modes
let g:user_emmet_mode='n'
let g:user_emmet_mode='inv'
let g:user_emmet_mode='a'
