set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set mouse=a
set nobackup
set noswapfile
syntax on

call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline-themes'
	Plug 'romgrk/barbar.nvim'
	Plug 'preservim/tagbar'
	Plug 'ryanoasis/vim-devicons'
	Plug 'sheerun/vim-polyglot'
	Plug 'navarasu/onedark.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark

nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

inoremap <silent><expr> <INSERT>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Insert>" :
      \ coc#refresh()
inoremap <expr><S-INSERT> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
