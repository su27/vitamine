# Vitamine

Vim plugins, scripts and resources for my daily use.

## Installation

1. Clone Vitamine:
  ```bash
  $ git clone git@github.com:su27/vitamine.git ~/.vim
  ```

2. Install submodules & configured bundles
  ```bash
  $ ./install.sh
  ```

3. Download & install patched font Monaco for Vim-Powerline. [OSX](https://gist.github.com/1838072) / [Linux](https://gist.github.com/1634235)
  ```bash
  $ open ~/.vim/colors/fonts/Monaco+for+Powerline.otf
  ```

4. Make sure you have `ctags`.

5. Compile [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#installation).

## Configured Bundles:

```viml
" Bundles {
  " Github Repos
  NeoBundle 'Valloric/YouCompleteMe'      " A code-completion engine for Vim
  NeoBundle 'Shougo/vimproc'              " Interactive command execution
  NeoBundle 'scrooloose/syntastic'        " Syntax checking hacks
  NeoBundle 'scrooloose/nerdtree'         " A tree explorer plugin
  NeoBundle 'scrooloose/nerdcommenter'    " Vim plugin for intensely orgasmic commenting
  NeoBundle 'kien/ctrlp.vim'              " Fuzzy file, buffer, mru, tag, etc finder
  "NeoBundle 'myusuf3/numbers.vim'         " A vim plugin for better line numbers
  "NeoBundle 'Lokaltog/vim-powerline'      " The ultimate vim statusline utility
  NeoBundle 'vim-airline/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'
  NeoBundle 'Lokaltog/vim-easymotion'     " Vim motions on speed!
  NeoBundle 'hail2u/vim-css3-syntax'      " Add CSS3 syntax support to vim's built-in `syntax/css.vim`
  NeoBundle 'skammer/vim-css-color'       " Highlight colors in css files
  NeoBundle 'keitheis/vim-plim'           " Syntax Highlighting for Plim
  NeoBundle 'pangloss/vim-javascript'     " Vastly improved vim's javascript indentation
  NeoBundle 'plasticboy/vim-markdown'     " Syntax highlighting and matching rules for Markdown
  NeoBundle 'tpope/vim-fugitive'          " A Git wrapper so awesome, it should be illegal
  NeoBundle 'tpope/vim-surround'          " quoting/parenthesizing made simple
  NeoBundle 'mxw/vim-jsx'                 " Syntax highlighting and indenting for JSX
  NeoBundle 'guns/vim-clojure-static'     " Syntax highlighting and indenting for Clojure
  "NeoBundle 'fatih/vim-go'                " For golang

  " Github `vim-scripts`
  NeoBundle 'ack.vim'                     " Plugin for the Perl module / CLI script 'ack'
  NeoBundle 'taglist.vim'                 " Provides an overview of the structure of source code
" }
```
