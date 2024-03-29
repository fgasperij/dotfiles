-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = ","

-- IMPORTS
-- require('vars')      -- Variables
-- require('opts')      -- Options
-- require('keys')      -- Keymaps
-- require('plug')      -- Plugins



vim.api.nvim_set_var nocompatible
"filetype off   
"
"let plugins_file = "~/.vim/plugins.vim"
"exec 'source '.plugins_file
"
"" Plugins
"
"" ag binding to ack
"" obatined from https://github.com/rking/ag.vim/issues/124#issuecomment-227038003
"let g:ackprg = 'ag --vimgrep --smartcase'
"cnoreabbrev ag Ack
"cnoreabbrev aG Ack
"cnoreabbrev Ag Ack
"cnoreabbrev AG Ack
"
"" airline
"set laststatus=2
"let g:airline_section_b = '%{fnamemodify(getcwd(), ":t")} > %{airline#util#wrap(airline#extensions#branch#get_head(),0)}'
"
"" ctrlp
"let g:ctrlp_max_files=0
"let g:ctrlp_max_depth=40
"let g:ctrlp_working_path_mode=0
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ }
"
"" Visual options
"set ruler
"syntax on
"set relativenumber
"set number
""highlight ColorColumn ctermbg=235 guibg=#EBEBEB
""let &colorcolumn=join(range(81,999),",")
"set background=dark
"colorscheme solarized
"
"" Searching
"set hlsearch
"set incsearch
"
"" Filetypes
"filetype on
"filetype plugin indent on
"
"set tabstop=2
"set shiftwidth=2
"set smartindent
"set expandtab
"set autoread
"
"""""""""""
"" Mappings
"""""""""""
"let mapleader = "\<Space>"
"
"" shortcuts
"nnoremap <leader>w :w<cr>
"nnoremap <leader>wq :wq<cr>
"nnoremap <leader>wa :wa<cr>
"inoremap jk <esc>
"nnoremap <leader>h :noh<cr>
"" select
"nnoremap <leader>v V
"" I don't know why these two with the <plug> don't work with 'nore'
"vmap v <plug>(expand_region_expand)
"vmap <c-v> <plug>(expand_region_shrink)
"" copy and paste from clipboard
"vnoremap <leader>y "+y
"vnoremap <leader>d "+d
"nnoremap <leader>p "+p
"vnoremap <leader>p "+p
""" search
"nnoremap <leader>s :Ag 
"nnoremap <leader>c :Ag <cword><cr>
"nnoremap n nzz " Center search results
"" edit .vimrc
"nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"nnoremap <leader>sv :source $MYVIMRC<cr>
"nnoremap <leader>ep :exec 'vsplit '.plugins_file<cr>
"" quotes
"nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
"vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
"" move around
"nnoremap H ^
"nnoremap L $
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"" edit
"nnoremap <leader>o o<esc>k
"nnoremap <leader><S-o> <S-o><esc>j
"" NERDTree
"map <leader>nt :NERDTreeToggle<CR>
"" training wheels
"inoremap <esc> <nop>
