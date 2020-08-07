" Tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

let g:loaded_python_provider = 0

" Plugins
execute pathogen#infect()

call plug#begin()

Plug 'HerringtonDarkholme/yats.vim'
Plug 'fatih/vim-go', {  'tag': 'v1.22', 'do': ':GoUpdateBinaries' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'jparise/vim-graphql'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'Chiel92/vim-autoformat'
Plug 'cespare/vim-toml'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'digitaltoad/vim-pug'
Plug 'vimwiki/vimwiki'
Plug 'groenewege/vim-less'

call plug#end()

" Appearance
set number
colorscheme yttrium
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
let g:NERDTreeWinSize = 40    
let NERDTreeShowLineNumbers=1
let g:airline_powerline_fonts = 1
hi Pmenu    gui=NONE    guifg=#c5c8c6 guibg=#373b41
hi PmenuSel gui=reverse guifg=#c5c8c6 guibg=#373b41

" Clipboard
set clipboard+=unnamedplus 

" FZF
set rtp+=~/.fzf
nnoremap <C-o> :FZF<CR>

" Terminal emulator
tnoremap <Esc> <C-\><C-n>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Golang
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>t <Plug>(go-test)

let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert,noselect
set completeopt-=preview
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Typescript
" au BufWrite *.ts :Autoformat " Requires https://github.com/vvakame/typescript-formatter

" Save command
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" SpecStack
au BufWritePost *.feature silent !specfmt -w %
