call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" File browser
Plug 'preservim/nerdtree'
" Icons
Plug 'ryanoasis/vim-devicons'
" Language support
Plug 'LnL7/vim-nix'
" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Plugin Configurations
" Theme Config
set background=dark
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi Visual cterm=none ctermbg=darkgrey ctermfg=white

" NERDTree Config
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ""
highlight NERDTreeCWD ctermfg=white
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Set coc.nvim settings
let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-emmet',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-python',
    \ 'coc-go' 
    \]

    " General Settings
    set number
    syntax on
    set shiftwidth=2
    set smarttab
    set clipboard+=unnamedplus 
