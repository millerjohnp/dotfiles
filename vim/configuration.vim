" taken from: https://dougblack.io/words/a-good-vimrc.html

colorscheme monokai  " awesome colorscheme from https://github.com/sickill/vim-monokai

syntax enable        " enable syntax processing

set expandtab        " tabs are spaces
set tabstop=4        " number of visual spaces per tab
set softtabstop=4    " number of spaces in tab when editing
set textwidth=80    " break lines when line length increases
set shiftwidth=4     " Number of spaces to use for autoindent
set autoindent       " Copy indent from current line when starting a new line
set shiftround       " If cursor is at 3 spaces, >> goes to 4 not 7
set backspace=indent,eol,start


" ui
set number           " show line numbers
set showcmd          " show command in bottom bar
set cursorline       " highlight current line
filetype indent on   " load filetype specific indent files
set wildmenu         " visual autocomplete for command menu
set lazyredraw       " redraw only when vim needs to for speed
set showmatch        " highlight matching [{()}]

" leader shortcuts
let mapleader=","       " leader is comma
" Don't reach for escape
inoremap jk <Esc>

" Save the session
nnoremap <leader>s :mksession<CR>

" searching
set incsearch        " search as characters are entered
set hlsearch         " highlight matches
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" TODO: Add folding

" movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" CtrlP settings
" git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" make it easy to cycle through buffers
:nnoremap <Tab> :bnext<CR>


augroup configgroup
    autocmd!
    " autocmd VimEnter * highlight clear SignColumn
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" launch config
" install pathogen with mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
call pathogen#infect()                      " use pathogen


" Syntax checking
" cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_loc_list_height=3
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" Nerdtree
" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

" Markdown preview 
" git clone git@github.com:JamshedVesuna/vim-markdown-preview.git ~/.vim/bundle/vim-markdown-preview
let vim_markdown_preview_github=1

" Compile the tex file; '%:r' is the current file's root (base) name
" autocmd FileType tex :nnoremap <leader>c :w<CR>:!latexmk -pdf %:r.tex <CR>
autocmd FileType tex :nnoremap <leader>c :w<CR>:!latexmk -pdf main.tex <CR>
" View PDF macro; 
autocmd FileType tex :nnoremap <leader>v :!/Applications/Skim.app/Contents/MacOS/Skim main.pdf &<CR>
" Don't truncate the length of lines in latex
" autocmd FileType tex setlocal textwidth=0

" See /usr/share/vim/vim80/indent/tex.vim for details.
let g:tex_noindent_env ='document\|verbatim\|lstlisting\|proof\|enumerate\|itemize\|exercise'
let g:tex_indent_items = 0

" Grammar checking
:nmap <F5> (grammarous-move-to-next-error)
