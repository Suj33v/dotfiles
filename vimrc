" Run pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" To use plugins from bundle
filetype plugin on

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Use spaces instead of tabs
set expandtab

" Highlight search results
set hlsearch

" Incremental search (as you type)
set incsearch

" Ignore case when searching
set ignorecase

" Turn backups off, remove swap files
set nobackup
set noswapfile

" Always show current position
set ruler

" 2 space indentation
set shiftwidth=2

" When searching try to be smart about cases
set smartcase

set smartindent

" 1 tab = 2 spaces
set tabstop=2

" Hide toolbar
set guioptions-=T

" Mark max recommended width
set colorcolumn=80

" Show line number of every line
set number

" Switch on syntax highlighting
syntax enable

" Use darcula theme
" colorscheme darcula

" Use solarized
set background=dark
colorscheme solarized

" Disabling markdown folding
let g:vim_markdown_folding_disabled=1
set nofoldenable

" No modeline processing please
set modelines=0
set nomodeline

" Show status line
set ls=2

" Command to open vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Command to delete all marks
nnoremap <leader>dm  :delmarks a-zA-Z0-9<cr>

" Map local leader
let maplocalleader = "\\"

" Make syntastic ignore angular's proprietary errors
let g:syntastic_html_tidy_ignore_errors=[
  \"trimming empty <i>",
  \"trimming empty <span>",
  \"proprietary attribute \"ng-"
\]

" Toggle background (useful only with solarized)
call togglebg#map("<F5>")

if has("gui_running")
  " any code here affects gvim but not console vim
  set lines=50 columns=165

  set guifont=Terminus:h12
else
  " any code here affects console vim but not gvim
endif

nnoremap <C-t> :TagbarToggle<CR>


"================== NERDTree commands ======================================{{{

" NERDTree commands

" Automatically start with NERDTree
" autocmd VimEnter * NERDTree

" Start NERDTree with ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Close vim if only buffer left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
  \ && b:NERDTree.isTabTree()) | q | endif

"===========================================================================}}}

"================== CtrlP settings ========================================={{{

" CtrlP ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = {
  \ 'dir': 'node_modules\|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

"================== Handling whitspace ====================================={{{

" Highlight trailing whitespace
match ErrorMsg '\s\+$'


" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

"===========================================================================}}}

"================== Neocomplete commands ==================================={{{

" Enable neocomplete at startup
let g:neocomplete#enable_at_startup = 1

" Use smartcase
let g:neocomplete#enable_smart_case = 1

"Set minium syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 2


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=python3complete#Complete

"===========================================================================}}}

"================== Vimtex commands ========================================{{{

let g:vimtex_latexmk_continuous = 1

"===========================================================================}}}


