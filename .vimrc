" Inisialisasi vim-plug
call plug#begin('~/.vim/plugged')

" Daftar plugin yang akan diinstal
Plug 'tpope/vim-rails'       " Ruby on Rails support
Plug 'vim-ruby/vim-ruby'     " Ruby support
Plug 'tpope/vim-endwise'     " Tambah end otomatis untuk blok Ruby
Plug 'jiangmiao/auto-pairs'  " Auto-close untuk parentheses, brackets, quotes
Plug 'mattn/emmet-vim'       " Emmet untuk HTML dan CSS
Plug 'tailwindlabs/tailwindcss-intellisense'  " Tailwind CSS Intellisense
Plug 'preservim/nerdtree'    " File explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'      " Fuzzy file finder
Plug 'airblade/vim-gitgutter' " Menampilkan perubahan git di gutter
Plug 'tpope/vim-fugitive'    " Integrasi Git di Vim
Plug 'Yggdroot/indentLine'   " Menampilkan garis indentasi
Plug 'morhetz/gruvbox'       " Warna tema gruvbox
Plug 'itchyny/lightline.vim' " Status bar yang lebih baik
Plug 'honza/vim-snippets'    " Snippets collection
Plug 'morhetz/gruvbox'

" Menyelesaikan proses instalasi
call plug#end()

" Mengaktifkan nomor baris
set number

" Mengaktifkan relative number untuk navigasi yang lebih cepat
set relativenumber

" Mengaktifkan syntax highlighting
syntax on

" Mengatur indentation otomatis
set autoindent
set smartindent
set tabstop=2        " Ukuran tab = 2 spaces
set shiftwidth=2     " Ukuran indentasi = 2 spaces
set expandtab        " Gunakan spaces alih-alih tab

" Menonaktifkan compatibility mode
set nocompatible

" Menampilkan status bar
set laststatus=2

" Menyimpan undo history
set undofile

" Meningkatkan tampilan dan navigasi baris panjang
set wrap
set linebreak
set showbreak=>>>

" Mengaktifkan mouse support
set mouse=a

" Highlight pencarian dan saat menulis teks
set hlsearch
set incsearch

colorscheme gruvbox
nnoremap <C-n> :NERDTreeToggle<CR>
let g:user_emmet_leader_key=','
nnoremap <leader>p :Files<CR>
command! FF vsplit | FZF
command! F FZF
