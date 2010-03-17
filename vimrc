" defaults
" :set mouse=a
set gtl=%t gtt=%F
set guifont=Monaco:h14
:set ts=2 sw=2 sts=2 expandtab autoindent
:set pastetoggle=<F12>
:set nocp
:syn on
:set background=dark
:set incsearch
:set scrolloff=2
:set nowrap
let loaded_matchparen = 1
" filetype plugin on

" set some custom tab spacings
autocmd BufRead         *.xsl   set ts=2 sw=2 sts=2 expandtab autoindent
autocmd BufRead         *.php   set ts=2 sw=2 sts=2 expandtab autoindent
autocmd BufRead         *.tpl   set ts=2 sw=2 sts=2 expandtab autoindent
" autocmd BufNewFile,BufRead *.ss set filetype=xhtml

" Automatically chmod +x Shell and Perl scripts
autocmd BufWritePost    *.sh    !chmod +x %
autocmd BufWritePost    *.pl    !chmod +x %

" don't show help when F1 is pressed
map <F1> <ESC>
"ignoremap <F1> <ESC>
"
"Open file at last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

" Common Command Typos
command! Q  quit    " converts ... :Q  => :q
command! W  write   " converts ... :W  => :w
command! Wq wq      " converts ... :Wq => :wq
command! Wn wn      " converts ... :Wn => :wn 

" One-key macro repeat
map <F12> @@

" Line numbers shortcut
:nmap <C-N><C-N> :set invnumber <CR>

"Open file at last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

" read/write a .viminfo file, don't store more than 500 lines of registers
set viminfo='20,\"500

"---------+
" Comments \
"-----------+

map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
map ,> :s/^/> /<CR>
map ,! :s/^/!/<CR>
map ,; :s/^/;/<CR>
map ,- :s/^/--/<CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>

" get vim to read .ss files as if they were html files
:set number
set guioptions+=b
set tags=./tags;
set grepprg=ack

let mapleader = ","
map <Leader>t :NERDTree
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
vmap <Leader>gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

colorscheme railscasts
set gfn=Monaco:h12
