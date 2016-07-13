" Version 2014/10/31
"
" https://github.com/leonard-wei/vim-ide.git
"   by Leonard Wei <gooxxgle.mail@gmail.com>
" Original From https://github.com/sontek/dotfiles/
" ==========================================================
" Dependencies - Libraries/Applications outside of vim
" ==========================================================
" Pep8 - http://pypi.python.org/pypi/pep8
" Pyflakes
" Ack
" Rake & Ruby for command-t
" nose, django-nose
"
" ==========================================================
" Plugins included
" ==========================================================
" Ack
"   A replacement for 99% of the uses of grep.
"
" acp
"   Automatically opens popup menu for completions.
"
" Coffee
"   Adds [CoffeeScript] support to the vim.
"
" Commant-T
"   Allows easy search and opening of files within a given path.
"
" Fugitive
"   Interface with git from vim.
"
" Git
"   Syntax highlighting for git config files.
"
" GunDo
"   Visual Undo in vim with diff's to check the differences.
"
" MakeGreen
"   Generic test runner that works with nose.
"
" Markdown
"   A text-to-HTML conversion tool for web writers.
"
" NERDTree
"   Explore your filesystem and to open files and directories easily.
"
" Pep8
"   Checks if your python code is pep-8 compliant.
"
" Pathogen
"   Better Management of VIM plugins
"
" Pydoc
"   Opens up pydoc within vim
"
" PyFlakes
"   Underlines and displays errors with Python on-the-fly
"
" Pytest
"   Runs your Python tests in Vim.
"
" Python-mode
"   Use the pylint_, rope_, pydoc_, pyflakes_, pep8_, mccabe_ libraries in
"   vim to provide features like python code looking for bugs.
"
" Ropevim
"   Uses rope_ library to provide features like python refactorings and
"   code-assists.
"
" Snipmate
"   Configurable snippets to avoid re-typing common comands.
"
" SrcExpl
"   A source code explorer that provides context for the currently selected
"   keyword in a separate window.
"
" Supertab
"   Use <Tab> for all your insert completion needs.
"
" Surround
"   Allows you to surround text with open/close tags.
"
" TagList
"   A source code browser plugin for Vim.
"
" TaskList
"   Search for task tags and put them into a list.
"
" tlib
"   Provides some utility functions.
"
" Trinity
"   Manages Source Explorer, Taglist and NERDTree(works like the "Source
"   Insignt").
"
" vim-addon-mw-utils
"   Interpret a file by function and cache file automatically.


" ==========================================================
" Color Schemes
" ==========================================================
colorscheme dark
highlight SpellBad cterm=bold ctermbg=4
highlight ColorColumn ctermfg=7 ctermbg=5


" ==========================================================
" Change Cursor Shape
" ==========================================================
if &term =~ "^xterm\\|rxvt"
    " change cursor color: \x1b = ESC, \x9d = OSC = ESC]
    " ESC]12;#rgb\x7
    let &t_SI = "\<Esc>]12;#00ffff\x7"
    let &t_EI = "\<Esc>]12;white\x7"
    silent !echo -ne "\033]12;\#00ffff\007"
    " change cursor shape: \x1b = ESC, \x9b = CSI = ESC[
    " ESC[Ps q, Ps:
    " 1 or 0 -> blinking block, 2 -> solid block, 3 -> blinking unserscore,
    " 4 -> solid underscore, xterm 282 or above: 5 -> blinking vertical bar,
    " 6 -> solid vertical bar
    "let &t_SI .= "\<Esc>[4 q"
    "let &t_EI .= "\<Esc>[2 q"
endif

if has("autocmd")
    " reset cursor when exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " if vim is running in a gnome-terminal
    "autocmd InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    "autocmd InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    "autocmd VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    "autocmd VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif


" ==========================================================
" Shortcuts
" ==========================================================
set nocompatible              " Don't be compatible with vi
let mapleader = ','           " change the leader to be a comma vs slash

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

" for when we forget to use sudo to open a file
cmap w!! w !sudo tee % >/dev/null
cmap W! w !sudo tee % >/dev/null

" and lets make these all work in insert mode too ( <C-O> makes next cmd
" happen as if in command mode )
imap <C-W> <C-O><C-W>

" ctrl-jklm  changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Resize window
nnoremap <silent> <leader>+ :exe "resize " . (winheight(0) * 987 / 610)<CR>
nnoremap <silent> <leader>- :exe "resize " . (winheight(0) * 610 / 987)<CR>
nnoremap <silent> <leader>> :exe "vertical resize " . (winwidth(0) * 987 / 610)<CR>
nnoremap <silent> <leader>< :exe "vertical resize " . (winwidth(0) * 610 / 987)<CR>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>

function! SplitScroll()
    :wincmd v
    :wincmd w
    execute "normal! \<C-d>"
    :set scrollbind
    :wincmd w
    :set scrollbind
endfunction
nmap <leader>sb :call SplitScroll()<CR>

" ----------------------------
" Open NerdTree
map <leader>n :NERDTreeToggle<CR>

" Load the Gundo window
map <leader>g :GundoToggle<CR>

" Toggle the tasklist
map <leader>td <Plug>TaskList

" highlight tasklist
nnoremap <silent> <leader>tt :hi myTodoList ctermbg=white ctermfg=black guibg=white guifg=black<CR>:mat myTodoList /\(TODO\)\\|\(FIXME\)\\|\(XXX\)\\|\(NOTE\)\\|\(MARK\)/<CR>
nnoremap <silent> <leader>t<space> :hi clear myTodoList<CR>

" Run command-t file search
map <leader>f :CommandT<CR>

" Ack searching
nmap <leader>a <Esc>:Ack!

" Supertab Mapping(default: '<tab>' and '<s-tab>')
" (The following settings are equal to '<c-space>' and '<s-c-space>')
"let g:SuperTabMappingForward = '<nul>'
"let g:SuperTabMappingBackward = '<s-nul>'

" ----------------------------
" Trinity Mapping
" Open and close all the three plugins on the same time
nmap <F6>  :TrinityToggleAll<CR>
" Open and close the Source Explorer separately
nmap <F7>  :TrinityToggleSourceExplorer<CR>
" Open and close the Taglist separately
nmap <F8> :TrinityToggleTagList<CR>
" Open and close the NERD Tree separately
nmap <F9> :TrinityToggleNERDTree<CR>

" ----------------------------
" Jump to the definition of whatever the cursor is on
map <leader>j :RopeGotoDefinition<CR>

" Rename whatever the cursor is on (including references to it)
map <leader>r :RopeRename<CR>

" Run pep8
let g:pep8_map = '<leader>8'

" run py.test's
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

" Run django tests
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>


" ==========================================================
" Pathogen - Allows us to organize our vim plugins
" ==========================================================
" Load pathogen with docs for all plugins
filetype off

" Add plugin name to pathogen_disabled to disable that plugin
"let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'supertab')
"call add(g:pathogen_disabled, 'python-mode')
"call add(g:pathogen_disabled, 'coffee')
" Disable pylint auto-checking on every save. Use :PyLint to check manually.
autocmd FileType python let g:pymode_lint_write = 0

execute pathogen#infect()
execute pathogen#helptags()


" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set directory=~/tmp/vimswap,/var/tmp,/tmp
                              " List of directory names for the swap file, separated with commas.
set backupdir=~/tmp/vimswap,/var/tmp,/tmp
                              " List of directories for the backup file, separated with commas.
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.

" don't bell or blink
set noerrorbells
set vb t_vb=

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Set list & nolist
nnoremap <leader>l :setlocal list<CR>
nnoremap <leader>ll :setlocal nolist<CR>

" Set wrap & nowrap
nnoremap <leader>w :setlocal wrap<CR>
nnoremap <leader>ww :setlocal nowrap<CR>

" ----------------------------
" Insert completion
" ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" don't select first item, follow typing in autocomplete
set completeopt=menuone,longest,preview
set pumheight=6             " Keep a small completion window

" ----------------------------
" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=8               " <tab> inserts 8 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default

" don't outdent hashes
inoremap # #

" close preview window automatically when we move around
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" ----------------------------
" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.

" ----------------------------
" Messages, Info, Status
set ls=2                    " allways show status line
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without statuslines.
set laststatus=2            " Always show statusline, even if only 1 window.
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
set showmode                " If in Insert, Replace or Visual mode put a message on the last line.

" ----------------------------
" Searching and Patterns
set grepprg=ack             " replace the default grep program with ack
set ignorecase smartcase    " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently 
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" ----------------------------
" Display
" displays tabs with :set list & displays when a line runs off-screen
set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
"set list

if has("gui_running")
    colorscheme desert
    " Remove menu bar
    set guioptions-=m

    " Remove toolbar
    set guioptions-=T
else
    "colorscheme torte
endif

" Paste from clipboard
map <leader>p "+p

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/ = ''<CR>

" Select the item in the list with enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" ==========================================================
" FileType specific changes
" ==========================================================
if (v:version >= '703')
    " Disable the colorcolumn when switching modes.  Make sure this is the
    " first autocmd for the filetype here
    "autocmd FileType * setlocal colorcolumn=0
    set colorcolumn=79         " Only available on vim 7.3
    "autocmd BufRead *.[^p][^y]* setlocal colorcolumn=79
    "autocmd BufRead *.py setlocal colorcolumn=72,79  "Column 72 is for docstrings
endif

" ----------------------------
" Extend custom TaskList
let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
call extend(g:tlTokenList, ['NOTE', 'MARK'])

" ----------------------------
" C/C++
autocmd FileType c,cpp setlocal noexpandtab tabstop=4

" ----------------------------
" Python
"autocmd BufRead *.py compiler nose
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" Don't let pyflakes use the quickfix window
autocmd FileType python let g:pyflakes_use_quickfix = 0
autocmd FileType python let g:pymode_breakpoint = 0
autocmd FileType python let g:pymode_lint_checker = 'pylint'
autocmd filetype python let g:pymode_lint_ignore = 'W0105'
"autocmd filetype python let g:pymode_lint_ignore = 'W0611'

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" ----------------------------
" Mako/HTML
autocmd BufNewFile,BufRead *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd FileType html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" ----------------------------
" Javascript
autocmd BufRead *.js set makeprg=jslint\ %

" Use tab to scroll through autocomplete menus
"autocmd VimEnter * imap <expr> <Tab> pumvisible() ? "<C-N>" : "<Tab>"
"autocmd VimEnter * imap <expr> <S-Tab> pumvisible() ? "<C-P>" : "<S-Tab>"

let g:acp_completeoptPreview = 1

" ----------------------------
" CoffeeScript
autocmd FileType coffee setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" ----------------------------
" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif
