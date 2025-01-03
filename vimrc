" This is a su27-forked version of vimrc, inherited from:

" Vitamine {
"   Maintainer: Kaavie <mockee at gmail.com>
"   Notes: http://mockee.com
" }

" Environment {
  set nocompatible
  filetype on
  filetype off
  filetype plugin indent on

  " for some env, vim has to be explicitly set to 256 colors
  let &t_Co=256
  let &t_AF="\e[38;5;%dm"
  let &t_AB="\e[48;5;%dm"
" }

" NeoBundles {
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('/home/su27/.vim/bundle'))
  NeoBundleFetch 'Shougo/neobundle.vim'

  " Github Repos
  NeoBundle 'Valloric/YouCompleteMe'      " A code-completion engine for Vim
  NeoBundle 'Exafunction/codeium.vim'      " codeium
  "NeoBundle 'Shougo/vimproc'              " Interactive command execution
  NeoBundle 'vim-syntastic/syntastic'        " Syntax checking hacks
  "NeoBundle 'preservim/nerdtree'         " A tree explorer plugin
  NeoBundle 'preservim/nerdcommenter'    " Vim plugin for intensely orgasmic commenting
  NeoBundle 'ctrlpvim/ctrlp.vim'          " Fuzzy file, buffer, mru, tag, etc finder
  "NeoBundle 'myusuf3/numbers.vim'         " A vim plugin for better line numbers
  NeoBundle 'vim-airline/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'
  "NeoBundle 'Lokaltog/vim-easymotion'     " Vim motions on speed!
  "NeoBundle 'hail2u/vim-css3-syntax'      " Add CSS3 syntax support to vim's built-in `syntax/css.vim`
  "NeoBundle 'skammer/vim-css-color'       " Highlight colors in css files
  "NeoBundle 'keitheis/vim-plim'           " Syntax Highlighting for Plim
  "NeoBundle 'pangloss/vim-javascript'     " Vastly improved vim's javascript indentation
  NeoBundle 'plasticboy/vim-markdown'     " Syntax highlighting and matching rules for Markdown
  NeoBundle 'tpope/vim-fugitive'          " A Git wrapper so awesome, it should be illegal
  NeoBundle 'tpope/vim-rhubarb'           " Open github(and enterprise) pages for current file
  "NeoBundle 'tpope/vim-surround'          " quoting/parenthesizing made simple
  "NeoBundle 'mxw/vim-jsx'                 " Syntax highlighting and indenting for JSX
  "NeoBundle 'guns/vim-clojure-static'     " Syntax highlighting and indenting for Clojure
  "NeoBundle 'fatih/vim-go'                " For golang

  " Github `vim-scripts`
  NeoBundle 'ack.vim'                     " Plugin for the Perl module / CLI script 'ack'
  "NeoBundle 'taglist.vim'                 " Provides an overview of the structure of source code
  "NeoBundle 'github/copilot.vim'
  NeoBundle 'github/copilot.vim'          " Copilot for vim

  call neobundle#end()

  " Auto-Installation
  if neobundle#exists_not_installed_bundles()
    echomsg 'Automatically install the following bundles: ' .
      \ string(neobundle#get_not_installed_bundle_names())
    execute ':NeoBundleInstall'
  endif
" }

" General {
  syntax on                  " syntax highlighting
  filetype plugin indent on  " automatically detect file types
  "set mouse=a                " automatically enable mouse usage
  set mousehide              " hide the mouse cursor while typing
  set encoding=utf-8
  scriptencoding utf-8
  set fileencodings=utf-8
  set termencoding=utf-8

  set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
  set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
  set virtualedit=onemore         " allow for cursor beyond last character
  set history=800                 " Store a ton of history (default is 20)
  set hidden                      " allow buffer switching without saving
  "set autochdir                   " change directory to the current window
" }

" Formatting {
  set nowrap                      " wrap long lines
  set autoindent                  " indent at the same level of the previous line
  set expandtab                   " tabs are spaces, not tabs
  set shiftwidth=4                " use indents of 2 spaces
  set tabstop=4                   " an indentation every two columns
  set softtabstop=4               " let backspace delete indent
  set diffopt+=iwhite,vertical    " ignore the difference of indents
  set matchpairs=(:),{:},[:],<:>
  set foldmethod=marker
  set colorcolumn=80
  set smartindent
  set autoindent
  set cindent

  " Remove trailing whitespaces and ^M chars
  autocmd BufWritePre <buffer> call StripTrailingWhitespace()
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType java setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
" }

" UI {
  set tabpagemax=15
  set background=dark

  let g:solarized_termtrans=1
  let g:solarized_contrast='high'
  let g:solarized_visibility='high'
  "in mintty, comment out the following line
  let g:solarized_termcolors=256

  colorscheme molokai

  if has('cmdline_info')
    set ruler                   " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                 " show partial commands in status line and
                                " selected characters/lines in visual mode
  endif

  if has('statusline')
    set laststatus=2
  endif

  " set rnu                         " relative line number
  set nu
  set numberwidth=4               " set the width of line number gutter column
  set linespace=2                 " set spaces between rows
  set ignorecase                  " case insensitive search
  set backspace=indent,eol,start  " backspace for dummies
  set smartcase                   " case sensitive when uc present
  set showmatch                   " show matching brackets/parenthesis
  set hlsearch                    " highlight search terms
  set incsearch                   " find as you type search
  set wildmenu                    " show list instead of just completing
  set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all
  set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
  set scrolljump=5                " lines to scroll when cursor leaves screen
  set scrolloff=3                 " minimum lines to keep above and below cursor
  set foldenable                  " auto fold code
  set cursorline                  " highlight current line
  set anti                        " make text pretty
" }

" Key Mapping {
  :nnoremap <CR> :nohlsearch<CR><CR>
  map tn :tabnext<cr>
  map tp :tabprevious<cr>
  map te :tabedit
  map rn :bnext<cr>
  map rp :bprev<cr>
  map rq :bdelete<cr>

  let mapleader = ","
  let g:mapleader = ","

  set pastetoggle=<leader>gg

  " delete without yanking
  nnoremap <leader>d "_d
  vnoremap <leader>d "_d

  " replace currently selected text with default register without yanking it
  vnoremap <leader>p "_dP

  " Code folding options
  nmap <leader>f0 :set foldlevel=0<CR>
  nmap <leader>f1 :set foldlevel=1<CR>
  nmap <leader>f2 :set foldlevel=2<CR>
  nmap <leader>f3 :set foldlevel=3<CR>
  nmap <leader>f4 :set foldlevel=4<CR>
  nmap <leader>f5 :set foldlevel=5<CR>
  nmap <leader>f6 :set foldlevel=6<CR>
  nmap <leader>f7 :set foldlevel=7<CR>
  nmap <leader>f8 :set foldlevel=8<CR>
  nmap <leader>f9 :set foldlevel=9<CR>

  " Easy indent for code blocks
  nmap <tab>    v>
  nmap <s-tab>  v<
  vmap <tab>    >gv
  vmap <s-tab>  <gv

  " toggle between relative and absolute numbering
  " nnoremap <F3> :NumbersToggle<CR>
" }

" NerdTree {
  map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
  map <leader>e :NERDTreeFind<CR>
  nmap <leader>nt :NERDTreeFind<CR>

  let NERDTreeShowBookmarks = 1
  let NERDTreeIgnore = ['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
  let NERDTreeChDirMode = 0
  let NERDTreeQuitOnOpen = 1
  let NERDTreeMouseMode = 2
  let NERDTreeShowHidden = 1
  let NERDTreeKeepTreeInNewTab = 1
  let g:NERDTreeWinSize = 20
  let g:nerdtree_tabs_open_on_gui_startup = 0

  " open a NERDTree automatically when vim starts up if no files were specified
  " autocmd vimenter * if !argc() | NERDTree | endif
" }

" SyntaxCheckers {
  let g:syntastic_mode_map = {
    \ 'mode': 'active',
    \ 'passive_filetypes': ['html','java'] }
  let g:syntastic_python_flake8_args = "--ignore=E722,E731,E265,E701,E501,E261,D105,D100,D103,D400,D102,D302,D205,D101,W503,W605,W504"

  " E731:use func not lambda
  " E722:except:
  " C0103:Invalid name; C0111:no doc string; W0141:map/filter
  " W0232:No init in class; R0201:could be func; W0142:*/** magic
  " R0903:too few method; R0904: too many method
  " W503:line break before binary operator
  " W605:invalid escape sequence(must use r'')
  " W504:binary operator must in front of line
  " C0111,W0141: no such attr
  "let g:syntastic_python_pylint_args = '-d R0904,R0903,W0142,W0232,R0201,C0103'
  "let g:syntastic_javascript_jshint_conf = '~/.jshintrc'
  let g:syntastic_python_checkers = ['flake8']

  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  "let g:syntastic_always_populate_loc_list = 1
  "let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
" }

" vimScript {
  let g:html_indent_inctags = 'html,body,head,tbody'
  let g:html_indent_script1 = 'inc'
  let g:html_indent_style1 = 'inc'
" }

" vim-go {
  let g:go_fmt_command = "goimports"
" }

" YouCompleteMe {
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
"let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap gd :YcmCompleter GoTo<CR>
" }

" Codeium {
imap <C-k> <Cmd>call codeium#Clear()<CR>
imap <C-h> <Cmd>call codeium#CycleCompletions(1)<CR>
imap <script><silent><nowait><expr> <C-l> codeium#AcceptNextWord()
imap <script><silent><nowait><expr> <C-j> codeium#AcceptNextLine()
" }

" nerdcommenter {
  map mm <plug>NERDCommenterToggle
  map <Leader>cm NERDComMinimalComment
" }

" CtrlP {
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.(git|hg|svn)$|venv$|node_modules$|bower_components$|static$|build$)',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.pyc

  if has("gui_macvim")
    nnoremap <silent> <D-r> :CtrlPMRU<CR>
  endif

  nmap <silent> <leader>f :CtrlP<cr>
  nmap <silent> <leader>r :CtrlPMRU<cr>
  nmap <silent> <leader>m :CtrlPMixed<cr>
  nmap <silent> <leader>b :CtrlPBuffer<cr>
" }

" Ack {
  nnoremap <leader>/ :Ack
  " The silver searcher
  " https://github.com/ggreer/the_silver_searcher
  let g:ackprg = 'ag --nogroup --nocolor --column'
" }

" CSSColor {
  let g:cssColorVimDoNotMessMyUpdatetime = 1
" }

" Fugitive {
  nnoremap <silent> <leader>st :Git<CR>
  nnoremap <silent> <leader>di :Gdiff<CR>
  nnoremap <silent> <leader>bl :Git blame<CR>
  nnoremap <silent> <leader>.. :edit %:h<CR>
  nnoremap <silent> <leader>nn :cnext<CR>
  nnoremap <silent> <leader>pp :cprev<CR>
  autocmd QuickFixCmdPost *grep* cwindow
"}

" Powerline {
  "let g:Powerline_symbols = 'unicode'
  "if not use patched font:
  let g:Powerline_symbols = 'compatible'
  let g:Powerline_colorscheme = 'default'
" }
"
" markdown {
  let g:vim_markdown_folding_disabled = 1
" }

" EasyMotion {
  " Compatible with `solarized` colorscheme
  hi link EasyMotionTarget ErrorMsg
  hi link EasyMotionShade  Comment
" }

" UltiSnips {
  let g:UltiSnipsSnippetDirectories=["snippets"]
" }

" Autocmd {
  autocmd! bufwritepost vimrc source ~/.vim/vimrc
" }

" Taglist {
  set tags=./tags,.git/tags,./TAGS,tags;~,TAGS;~
  nmap <silent> <leader>tg :TlistToggle<CR>
  let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
  let Tlist_File_Fold_Auto_Close=1
  let Tlist_Exit_OnlyWindow = 1
  let Tlist_Show_Menu=1
  let Tlist_GainFocus_On_ToggleOpen=1
  let Tlist_Close_OnSelect=1
  let Tlist_Compact_Format=1
  let Tlist_Use_Right_Window = 1
  let Tlist_WinWidth = 45
  let Tlist_Inc_Winwidth = 0
  let Tlist_Sort_Type = 'name'
" }

" Functions {
  function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line('.')
    let c = col('.')
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  endfunction

  function! InitializeDirectories()
    let parent = $HOME
    let prefix = '.vim'
    let dir_list = {
          \ 'backup': 'backupdir',
          \ 'views': 'viewdir',
          \ 'swap': 'directory' }

    if has('persistent_undo')
      let dir_list['undo'] = 'undodir'
    endif

    for [dirname, settingname] in items(dir_list)
      let directory = parent . '/' . prefix . dirname . '/'
      if exists('*mkdir')
        if !isdirectory(directory)
          call mkdir(directory)
        endif
      endif
      if !isdirectory(directory)
        echo 'Warning: Unable to create backup directory: ' . directory
        echo 'Try: mkdir -p ' . directory
      else
        let directory = substitute(directory, ' ', '\\\\ ', 'g')
        exec 'set ' . settingname . '=' . directory
      endif
    endfor
  endfunction
  call InitializeDirectories()
" }

" autopep8 {
  map <F8> :call FormartSrc()<CR>

  function! FormartSrc()
    exec "w"
    if &filetype == 'c'
    exec "!astyle --style=ansi --one-line=keep-statements -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
    exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
    exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
    exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
    exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
    exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
    exec "!astyle --style=gnu --suffix=none %"
    endif
    exec "e! %"
  endfunction
" }

" cursor style {
  if &term =~ '^xterm'
    let &t_SI .= "\<Esc>[5 q"
    let &t_EI .= "\<Esc>[1 q"
    " 1 or 0 -> blinking block
    " 2 -> solid underscore
    " 3 -> blinking underscore
    " 4 -> solid block
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
  endif
" }

" ctags {
  map <f12> :!~/bin/git_ctags.sh<cr>
" }

" airline {
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  " themes list: https://github.com/vim-airline/vim-airline/wiki/Screenshots
  let g:airline_theme = 'hybrid'
  set guifont=Monaco\ for\ Powerline:h11
  set renderoptions=type:directx,renmode:5

  " https://github.com/vim-airline/vim-airline/blob/d9f42cb46710e31962a9609939ddfeb0685dd779/doc/airline.txt#L365
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_left_sep = ' '
  let g:airline_right_sep = ' '
  let g:airline_right_alt_sep = '|'
  let g:airline_left_alt_sep = '|'
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = 'R'
  let g:airline_symbols.linenr = 'L'
" }

" rhubarb {
  let g:github_enterprise_urls = ['https://github.intra.douban.com']
  noremap <leader>w :GBrowse!<cr>
" }
