syntax on

set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set cursorline
set cursorcolumn
set splitright

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


call plug#begin('~/.vim/plugged')

"Basic
Plug 'preservim/nerdtree'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vimsence/vimsence'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'blueyed/vim-diminactive'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
"Color Scheme"
Plug 'gruvbox-community/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'colepeters/spacemacs-theme.vim'

Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

"lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

"auto-complete"
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-lua/diagnostic-nvim'

"auto-linting
Plug 'dense-analysis/ale'

"vim game
Plug 'ThePrimeagen/vim-be-good'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" automatically clear search highlights after you move your cursor
Plug 'haya14busa/is.vim'

call plug#end()

colorscheme gruvbox
highlight Normal ctermbg=0


set termguicolors
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Normal guibg=black guifg=white
set background=dark
highlight Normal ctermfg=black ctermbg=black
highlight Normal ctermfg=grey ctermbg=darkblue


let loaded_matchparen = 1
let mapleader = " "

let g:lsp_diagnostics_echo_cursor = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

let g:fzf_layout = { 'window': { 'window': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"

let g:ale_fixers = {
      \'javascript': ['eslint'],
      \'json': ['prettier'],
      \'typescript': ['eslint'],
      \'typescriptreact': ['eslint'],
      \'markdown': ['prettier'],
      \'css': ['stylelint'],
      \'scss': ['stylelint']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0
let g:gruvbox_contrast_dark = 'hard'
set mouse=a
nnoremap <leader>n : g:NERDTreeFocus <CR>
nnoremap <C-n> : g:NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
