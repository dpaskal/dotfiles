syntax enable
set background=dark
set statusline=%#PmenuSel#%<%F%=%#SpellCap#\ %l:%c\ %p%%
set laststatus=2 " Enable statusline

set wildignore=*.o,*~,*.pyc

set backspace=eol,start,indent " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l

set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic " For regular expressions turn magic on
set showmatch " Show matching brackets when text indicator is over them
set mat=2 " How many tenths of a second to blink when matching brackets

set noerrorbells " No annoying sound on errors
set novisualbell
set t_vb=
set tm=500

" => Text, tab and indent related
set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs ;)
set shiftwidth=4 " 1 tab == 4 spaces
set tabstop=4
set lbr " Linebreak on 500 characters
set tw=500
set ai "Auto indent
set si "Smart indent
set number "Show line numbers
set nowrap "Wrap lines

fun! CleanExtraSpaces() " Delete trailing white space on save, useful for some filetypes ;)
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.c*,*.h* :call CleanExtraSpaces()
endif

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

highlight LineNr cterm=none ctermfg=240
" Highlight extra whitespace
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
