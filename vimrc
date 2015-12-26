" Run pathogen
execute pathogen#infect()

if has("gui_running")
  set lines=40 columns=130
  " any code here affects gvim but not console vim
else
  " any code here affects console vim but not gvim
endif


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

" Switch on syntax highlighting
syntax enable

" Use darcula theme
colorscheme darcula

" Automatically start with NERDTree
autocmd VimEnter * NERDTree


"================== Scratch Edit =============================================={{{
function! ScratchEdit(cmd, options)
  exe a:cmd tempname()
  setl buftype=nofile bufhidden=wipe nobuflisted
  if !empty(a:options) | exe 'setl' a:options | endif
endfunction
"==============================================================================}}}

function! CaptureOutFun(cmd, scratch)
  let old_more=&more
  set nomore
  let @u = ""
  redir @U
  exec a:cmd
  redir END
  let &more=old_more
  if a:scratch == 1
    call ScratchEdit('split', 'ft=txt ff=dos cuc cul')
    normal Go
  endif
  normal "up'[
endfunction

command! -nargs=* CaptureOut silent call CaptureOutFun("<args>", 0)
command! -nargs=* CaptureOutScratch silent call CaptureOutFun("<args>", 1)
command! -nargs=* Scratch silent call ScratchEdit("split", <q-args>)

nnoremap ,co :CaptureOut<SPACE>
nnoremap <Leader>co :CaptureOut<SPACE>
nnoremap ,cq :CaptureOutScratch<SPACE>
nnoremap <Leader>cq :CaptureOutScratch<SPACE>
nnoremap <Leader>rr :<C-U>call CaptureToRegisterU()<CR>
nnoremap <Leader>rs :call RedirToScratch()<CR>
