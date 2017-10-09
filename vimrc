" double-quotes are comments for the .vimrc file

filetype plugin indent on
set nocp
execute pathogen#infect()
syntax on "enable

set nocompatible
set backspace=indent,eol,start
"set term=xterm-256
set hlsearch
""let g:solarized_termcolors=256
set t_Co=256 "for xoria256 colorscheme to work
"set t_Sb=m
"set t_Sf=m

set backupdir=/tmp
"set directory=.,./.backup,/tmp
"
set tabstop=8 shiftwidth=3 softtabstop=3
"set tabstop=8 softtabstop=0 expandtab shiftwidth=3 smarttab

"hi Comment ctermfg=LightBlue

"red after 80 chars in line
"set textwidth=80
"set colorcolumn=+1

" alternatively
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

"highlight ColorColumn ctermbg=red ctermfg=blue
"exec 'set colorcolumn=' . join(range(2,80,3), ',')

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn','\%81v',-1)

"expose shady chars
"set listchars=tab:>~,nbsp:_,trail:.
"set list

": w/o shift
"nnoremap ; :
"nnoremap : ;

"colorscheme solarized
"set background=dark
colorscheme xoria256

" https://www.youtube.com/watch?v=XA2WjJbmmoM

"fuzzy file search :find blah\t
"set path? - check prop set
set path+=**
"adds cool fuzzy find menu to iterate over matches:w
"adds same cool to :b blah\t
set wildmenu

"TAG JUMPING
command! MakeTags !ctags -R .

"NOW WE CAN
"^] to jump to tag under cursor
"g^] to it for ambiguous tags
"^t jump back the tag stack -traverse trees of refs simple

"AUTOCOMPLETE
"see ins-completion help
" ^x^n for just this file
" ^x^f for filemanes
" ^x^] for tags
" ^x^p for words in this file
" ^n for anything specified by complete option
" :w

" FILE BROWSING:
"let g:netrw_banner=0 		"disable annoying banner
"let g:netrw_browse_split=4	"open in prior window
"let g:netrw_altv=1		"open splits to the right
"let g:netrw_liststyle=3		"tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
"
" SNIPPETS
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" NOW WE CAN:
"  - paste snipets by typing ,html
"

"connect y,d ops with sys clipboard
"set clipboard=unnamed

""""""
set cursorline
"set cursorcolumn
":help hl-CursorLine or hl-CursorColumn
"
"set relativenumber
set number

"https://danielmiessler.com/study/vim/#why
inoremap jk <ESC>
let mapleader = "\<Space>"
"remap capslock to ctrl

"all selenium tests
nnoremap ,tt :r !for f in $(find t -name '*.py'); do echo '\#t='$f; done<CR>

"exclude = so <gf> does well in sh scripts
set isfname=@,47-57,/,.,-,_,+,,,#,$,%,~

". apply over visual select
vnoremap . :norm.<CR>

" enforce purity
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"nnoremap h <Nop>
"nnoremap j <Nop>
"nnoremap k <Nop>
"nnoremap l <Nop>

