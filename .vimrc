set ai                          " set auto-indenting on for programming
set ruler                       " show the cursor position all the time
set nu						    					" always display number
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
set shiftwidth=2								" number of spaces to use for autoindenting
set copyindent									" copy the previous indentation for autoindenting
set wrap												" don't wrap lines
set tabstop=2										" a tab is two spaces
set expandtab
set ignorecase									" ignore case when searching
set smartcase										" ignore case if searchy patter is all lowercase, otherwise normal
set shiftround									" use multiple of shiftwidth
set expandtab										" make tabs spaces
set colorcolumn=81 									" helps look better
set autoindent
set smartindent
noremap <C-d> :sh<cr>           " ctrld to go to shell
let g:vim_markdown_folding_disabled =1 "turn off folding
let g:previm_open_cmd = 'open -a google-chrome'
filetype plugin indent on
set paste
filetype plugin on
let g:BASH_SyntaxCheckOptionsGlob  = "-O extglob"



execute pathogen#infect()
syntax on                       " turn syntax highlighting on by default
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END


