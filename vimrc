call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set encoding=utf-8
set mouse=a
set nu
set ignorecase
set smartcase           "ignore case if search pattern is all in lowercase
set undolevels=1000

"highlight all the matches in search
set hlsearch

"Colorscheme
set background=dark
set t_Co=256
colorscheme jellybeans

if has("gui_macvim")
  colorscheme railscasts
endif

syntax on

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Indent Settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
filetype plugin indent on

"autoload on startup indentation guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgray ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=237

"CtrlP - Substituto do cmd+t
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Vim-Powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

"SnipMate
let g:snips_author = 'Brunno dos Santos'
"MAPS
"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

map <F5> :NERDTree<CR>
map <F4> :set hlsearch!<CR>

"This mapping make a closed tag with a new line with tab indent
inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Tab>

" Tab mappings.
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Print current path
cmap <C-e> <C-r>=expand('%:p:h')<CR>/

" Highlight Whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
