"plugins
  "vundle. plugin manager.
  "
  "to install plugin, place line Bundle 'gitrepouser/reponame' and run
  "BundleInstall
 
  filetype off                   "required!

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  "let Vundle manage Vundle
  "The
    Bundle 'gmarik/vundle'

  "My Bundles here:

  Bundle 'tpope/vim-fugitive'

  "easymotion.

    "to understand this, do <leader><leader>w ...
    Bundle 'Lokaltog/vim-easymotion'

  Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

  Bundle 'tpope/vim-rails.git'

    "comment handling. notably, the default <leader>c<space> toogles
    "comments
    Bundle 'scrooloose/nerdcommenter'


  "nerdtree
    Bundle 'scrooloose/nerdtree'
    let NERDTreeKeepTreeInNewTab=0
    "let loaded_nerd_tree=1  "stop opening nerd tree.

  "vim-session
    "allows me to load last session automatically...
    Bundle 'xolox/vim-session'
    let g:session_default_to_last = 1
    let g:session_autosave = 'yes'
    let g:session_autoload = 'yes'

  "newcomplcache. hardcore autocompletion.
    Bundle 'Shougo/neocomplcache'
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_smart_case = 1
    let g:neocomplcache_enable_underbar_completion = 1
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_enable_auto_delimiter = 1

    "AutoComplPop like behavior.
    let g:neocomplcache_enable_auto_select = 0

    "SuperTab like snippets behavior.
    imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)": pumvisible() ? "\<C-n>": "\<TAB>"

    "Plugin key-mappings.
    imap <C-k>     <Plug>(neocomplcache_snippets_expand)
    smap <C-k>     <Plug>(neocomplcache_snippets_expand)
    inoremap <expr><C-g>     neocomplcache#undo_completion()
    inoremap <expr><C-l>     neocomplcache#complete_common_string()


    "<CR>: close popup
    "<s-CR>: close popup and save indent.
    inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "\<CR>"
    inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup() "\<CR>": "\<CR>"
    "<TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>": "\<TAB>"

    "<C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
    inoremap <expr><C-y>  neocomplcache#close_popup()
    inoremap <expr><C-e>  neocomplcache#cancel_popup()

    "Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    "Enable heavy omni completion.
    if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
    "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
    let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

    "For snippet_complete marker.
    if has('conceal')
    set conceallevel=2 concealcursor=i
    endif 

  "msanders/snipmate.vim
    "allow you to define snippets: inster pieces of code, and then jump to
    "the point you want with tab. Also allows to force several placeholders
    "to be equal.
    Bundle 'msanders/snipmate.vim'

  "vim-scripts repos
    Bundle 'L9'
    Bundle 'FuzzyFinder'

  "vim latex
    "Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
    "Bundle 'jcf/vim-latex'
    "could not install with vundle or vim. next best option then
    "set runtimepath+=$HOME/.vim/plugin/vim-latex

  "tpope/vim-surround
    "https://github.com/tpope/vim-surround
    "Intelligent ''', '"', and html tags conversion
    "cs"' : change double to single quotes on cur word
    "cs'<q> : change apostrophe quote to xml <q> quote
    "cst": tag to "
    "ds": delete surrouding
    "ysiw] : add surrounding ] to word
    "ysiw[ : add surrounding space + ] to word
    "ysiw<em> : add surrounding <em> to word
    "linewise visual mode + S<p class="important">: surround lines with p.
    Bundle 'tpope/vim-surround'

  "vis
    "visual block only replace
    "select then :B s/a/b/g. replace acts only on selected block
    Bundle 'taku-o/vim-vis'


"general
  "allows vim to detect the filetype and use different behaviours
  "accordingly
  syntax on
  filetype on
  filetype plugin on
  filetype indent on

  "working directory is always the same as the file being edited
  set autochdir

  "leave vi compatibility
  set nocompatible

  "use the mouse
  set mouse=a

  "stop creating backup files
  set nobackup
  set noswapfile

  "automatically load files that were modified externally
  :set autoread 

  "stop those enter to continue useless messages
  set shortmess=atI

  "see many possibilities on a tab at command mode
  set wildmenu
  set wildmode=list:longest
  set history=1000

  "maintains at least 4 lines in view from the cursor
  set scrolloff=4

  "see trailling whitespace
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+\%#\@<!$/

  "normally, pressing alt focoses on the menu in gvim, but vim NEEDS no menu,
  "vim only needs vimrc!!
  set winaltkeys=no

"gui
  "set colorscheme
  colorscheme vividchalk

  "line numbers
  "set nonumber
  set number

  "line wrapping
  set nowrap
  set linebreak
  set nolist
  set textwidth=0
  set wrapmargin=0
  let &showbreak='>'.repeat(' ', 8)
  "slights highlights chars after 80
  "highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  "match OverLength /\%81v.\+/
  augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#101010
    autocmd BufEnter * match OverLength /\%75v.*/ 
  augroup END

  "at the right bottom I can see line, column and percentage of current file
  set ruler

  "The current buffer can be put to the background without writing to disk
  "When a background buffer becomes current again, marks and undo-history are remembered.
  "from http://items.sjbach.com/319/configuring-vim-right
  set hidden

  set guitablabel=%N)\ %t\ %M
  "format tab titles

"editing
  "allow backspacing over everything in insert mode
    set backspace=indent,eol,start

  "indentation
    set expandtab   "insert spaces instead of tabs
    set tabstop=4   "a tab is four spaces
    set shiftwidth=4  "number of spaces to use for autoindenting
    set autoindent  "always set autoindenting on
    set copyindent  "copy the previous indentation on autoindenting
    set shiftround  "use multiple of shiftwidth when indenting with '<' and '>'
    set smarttab    "insert tabs on the start of a line according to
                  " shiftwidth, not tabstop

  "folding
    set foldmethod=indent   "fold based on indent
    set foldnestmax=3       "deepest fold is 10 levels
    set nofoldenable        "dont fold by default
    set foldlevel=3         "this is just what i use

  "conceal: the thing that renders greek, underline, etc
    "stop it!!
    set cole=0

  "search
    set hlsearch    "highlight search terms
    set incsearch   "show search matches as you type
    set ignorecase  "ignore case when searching
    set smartcase   "ignore case if search pattern is all lowercase,
                    " case-sensitive otherwise
    set showmatch   "set show matching parenthesis

  "allows '%' to jump between open 'if' 'else', 'do', 'done', etc instead
  "of just parenthesis like chars
  "marcros/matchit.vim has been a standard file for years
  runtime macros/matchit.vim

  "autocompletion. leave to distro default
  "set ofu=syntaxcomplete#Complete

  "language speficif.
    "
    "to be split up into ftplugin if gest too large.
    "ftplugin.after is read after ftplugin, so you are sure that your
    "settings will be left after the distro's default

    autocmd FileType html setlocal shiftwidth=2 tabstop=2  

    autocmd FileType sh setlocal shiftwidth=2 tabstop=2  

    autocmd FileType vim setlocal shiftwidth=2 tabstop=2  

    au FileType cpp nnoremap <buffer> <F6> :! glutcomprun % 1<CR>

    "au! Syntax python source $HOME/.vim/syntax/python.vim

    "latex
      au FileType tex setlocal shiftwidth=2 tabstop=2  

      "goes to tex file
      function! SyncTexForward()
        let execstr = "silent !okular --unique %:p:r.pdf\#src:".line(".")."%:p &"
        exec execstr
      endfunction
      "au FileType tex nnoremap <buffer> <Leader>lf :call SyncTexForward()<CR>
      au FileType tex nnoremap <buffer> <Leader>lf :call SyncTexForward()

      "compile
      "let linenumber = line(".")
      function! SyncTexForwardOkular()
        "let execstr = "silent !okular --unique -p $(synctex-forward \"%:t:r\"".line(".").") \"%:t:r.pdf\"&"
        let execstr = "silent !okular --unique -p $(synctex-forward \"%:t:r\"".line(".").") \"%:t:r.pdf\"; wmctrl -a \"Okular\""
        exec execstr
      endfunction
      au FileType tex noremap <buffer> <F6> :call SyncTexForwardOkular()<CR> 

"key bindings
  "Here I put every mapping that I have made.
  "sorted by key order so that it is easy to find
  "
  "Esc F1-F12
  "1234567890
  "qwertyuiop[]
  "asdfghjkl;'\
  "zxcvbnm,./

  "<leader> will become a ','. easier to type
  let mapleader = ","

  "nerd tree
  noremap <F2> :NERDTreeToggle<CR>

  "accelerate vertical scroll down
  nnoremap <C-E> 5<C-E>

  vnoremap R "zy:%s/<C-r>z//g<left><left>
  "select what to replace, type replacement, hit enter
  "detroys Z register

  "tab navigation in normal mode
  "in terminal, alt tab is not possible, 
  "but should be used in gvim instead.
  nnoremap tf :tabfirst<CR>
  nnoremap tl :tablast<CR>
  nnoremap tt :tabedit<Space>
  nnoremap tT :tabclose<CR>
  nnoremap tn :tabnew<CR>
  nnoremap tm :tabm<Space>

  "accelerate vertical scroll up
  nnoremap <C-Y> 5<C-Y>

  "pAste from system clipboard before cursor (in the same place as you would edit with 'i')
  "the pasted item is selected in viusal mode if you want to indent it
  "so if you want to append to a Line to to insert mode first, 'A' to append and then <C-A> 
  "does not affect vim local register
  "A not to conflict with c-v visual block mode or with terminal shortcuts
  "and is left hand only, allowing you to keep your right hand is no the mouse
  cnoremap <C-A> <C-R>+
  inoremap <C-A> <ESC>"+p`[v`]
  nnoremap <C-A> "+P`[v`]
  vnoremap <C-A> d"+P`[v`]

  "insert Single char and return to normal mode
  function! RepeatChar(char, count)
   return repeat(a:char, a:count)
  endfunction
  nnoremap <silent> s :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>
  nnoremap <silent> S :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

  "select Go to last Pasted text (to indent, or delete for example)
  nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

  "I would rather have the capital H and L to go to
  "beginning or end of line
  "and J, K to jump 5 lines instead.
  "Also, I prefer to move along visual lines
  "rather than real lines ( thus the remap )
  nnoremap H ^
  vnoremap H ^
  nnoremap j gj
  vnoremap j gj
  nnoremap J 4gj
  vnoremap J 4gj
  nnoremap k gk
  vnoremap k gk
  nnoremap K 4gk
  vnoremap K 4gk
  nnoremap L $
  vnoremap L $

  "remap ';' to ':', dispensing shift to start commands
  nnoremap ; :

  "remove useless zl that does single horizontal scroll
  nnoremap zl zL
  nnoremap zh zH

  "cut to system clipboard
  vnoremap X "+ygvd

  "cut line to clipboard
  nnoremap dD ^v$"+ygvd

  "cut to system clipboard
  "
  "analogy to copy.
  vnoremap X "+ygvd

  "copy to system clipboard
  "
  "cannot c-c interminal because that is interrupt process.
  vnoremap C "+y

  "copy line to system clipboard
  nnoremap yY ^v$"+y

  "toggle coMMent
  nnoremap <C-M> <plugin>NERDComToggleComment<CR>

  "keep selected after shift in visual mode
  vnoremap > >gv
  vnoremap < <gv

  inoremap <Down> <C-o>gj
  inoremap <Up> <C-o>g
