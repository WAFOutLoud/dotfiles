" General Vim settings
    set nocompatible						" Use the latest Vim settings/options.

    syntax on
    let mapleader=","
    set autoindent
    set tabstop=4
    set shiftwidth=4
    set dir=/tmp/


" Visuals
    set t_Co=256						" Use 256 colors. This is useful for Terminal Vim.
    set guifont=Fira\ Code:h17					" Set the default font family and size.
    set guioptions-=e						" Use pretty symbols, when available.
    set linespace=16						" No Gui tabs.

    "set cursorline

    set relativenumber						" Enable relative line numbers.
    set number							" Enable numbers.

    set hlsearch						" Highlight search results.
    set incsearch						" Incrementally highlight, as we type.


" General Key Mappings
    nnoremap <leader><Space> :nohl<CR><C-l>:echo "Search Cleared"<CR>
    nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
    nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

    nnoremap n nzzzv
    nnoremap N Nzzzv

    nnoremap H 0
    nnoremap L $
    nnoremap J G
    nnoremap K gg

    map <tab> %

    set backspace=indent,eol,start
    
    nnoremap <Space> za
    nnoremap <leader>z zMzvzz

    nnoremap vv 0v$

    set listchars=tab:\|\
    nnoremap <leader><tab> :set list!<CR>
    set pastetoggle=<F2>
    set mouse=a


" File and Window Management
    inoremap <leader>w <Esc>:w<CR>
    nnoremap <leader>w :w<CR>

    inoremap <leader>q <Esc>:q<CR>
    nnoremap <leader>q :q<CR>

    inoremap <leader>x <Esc>:x<CR>
    nnoremap <leader>x :x<CR>

    nnoremap <leader>e :Ex<CR>
    nnoremap <leader>t :tabnew<CR>
    nnoremap <leader>v :vsplit<CR>
    nnoremap <leader>s :split<CR>

    nmap <C-j> <C-W><C-J>
    nmap <C-k> <C-W><C-K>
    nmap <C-h> <C-W><C-H>
    nmap <C-j> <C-W><C-L>


" Language Specific
    " General
        inoremap <leader>for <Esc>Ifor (int i = 0; i < <Esc>A; i++) {<enter>}<Esc>0<Tab>
        inoremap <leader>if <Esc>Iif (<Esc>A) {<enter>}<Esc>0<Tab>


" Return to the same line you left off at
    augroup line_return
        au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
