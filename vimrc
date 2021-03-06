" Adding Vundle Config
source ~/dotfiles/vim/personal/vundle.vim

set encoding=utf-8
set mouse=a
set nu rnu
set ignorecase
set smartcase           "ignore case if search pattern is all in lowercase
set undolevels=1000
set hidden              "hide buffers instead of closing them when you :q, keeping their undo history
set hlsearch            "highlight all the matches in search
set incsearch           "show search matches as you type
set cursorline          "show a hightlight line in cursor
set wmnu                "wild menu - to show in statusline a list of options to autocomplete

" OSX Clipboard works with y, d and p - Make shure to install vim using:
" brew install vim
set clipboard=unnamed

" make backspace work like most other apps
set backspace=2

"Don't let Vim write backup files, I used GIT to backup! ;)
set nobackup
set noswapfile

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Configurations to speed up Vim
set lazyredraw          " Wait to redraw
set scrolljump=8        " Scroll 8 lines at a time at bottom/top
let html_no_rendering=1 " Don't render italic, bold, links in HTML

"Colorscheme
syntax on
set background=dark
set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace

colorscheme base16-twilight

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Indent Settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
filetype plugin indent on

" If this Vim have autocmd command
if has("autocmd")
  " Setting Gemfile as ruby files
  autocmd BufNewFile,BufRead Gemfile setfiletype ruby
endif

" Highlight Whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" ==== VIM PLUGINS CONFIG ====
source ~/dotfiles/vim/personal/indent_guides.vim
source ~/dotfiles/vim/personal/crtlp.vim
source ~/dotfiles/vim/personal/snipmate.vim
source ~/dotfiles/vim/personal/tabularize.vim
source ~/dotfiles/vim/personal/taglist.vim
source ~/dotfiles/vim/personal/functions.vim
source ~/dotfiles/vim/personal/ctrlp-funky.vim

" ========= HABIT ========
source ~/dotfiles/vim/personal/habits.vim

" To enable the matchers of Vim
runtime macros/matchit.vim

" ==== VIM MAPS ====

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Automatic reload .vimrc when save it
au BufWritePost vimrc so $MYVIMRC

" Forget about shitt+; to use : to run commands ;)
nnoremap ; :

map <F5> :NERDTree<CR>
map <F4> :set hlsearch!<CR>
map <F2> :set paste!<CR>

" CTRL+X e CRTL+C to cut and copy in OSX
vmap <C-x> :!pbcopy<cr>
vmap <C-c> :w !pbcopy<cr><cr>

" To save a file that must be need a sudo permission! eg. /etc/hosts
cmap w!! w !sudo tee % >/dev/null

" To break a line from Normal mode
nnoremap <NL> i<CR><ESC>

"This mapping make a closed tag with a new line with tab indent
inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Tab>

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Tab mappings.
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" TODO List
noremap <Leader>td :noautocmd vimgrep /TODO/j **/*.*<CR>:cw<CR>

" Print current path
cmap <C-e> <C-r>=expand('%:p:h')<CR>/

" Select a text in Visual Mode and type <C+R> them text the substitution and
" type enter
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

map <leader>tt :set noet ci pi sts=0 sw=4 ts=4<cr>

" Clear White Spaces
map <leader>ctw :%s/\s\+$//<CR>

" Adding = as 'underlines'
map <leader>h1 yypVr=o

" Highlight fucking 80 columns :/et &colorcolumn=join(range(81,999),",")
let &colorcolumn=join(range(81,999),",")
