:colorscheme desert 
"""set softtabstop=4
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
""filetype plugin indent on
"let g:pymode = 0 
"let g:pymode_folding = 0
"let g:pep8_map='<leader>8'
" Open and close all the three plugins on the same time 
"nmap <F8>  :TrinityToggleAll<CR> 

" Open and close the Source Explorer separately 
nmap <F9>  :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
" nmap <F10> :TrinityToggleTagList<CR> 

" Open and close the NERD Tree separately 
" nmap <F11> :TrinityToggleNERDTree<CR>  

"Open flake8
nmap <F12> :SyntasticToggleMode<CR>

" Source explorer Windows hight
let g:SrcExpl_winHeight = 8

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

nmap <C-H> <C-W>h 
nmap <C-J> <C-W>j 
nmap <C-K> <C-W>k 
nmap <C-L> <C-W>l

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

execute pathogen#infect()

let g:syntastic_python_checkers = ['flake8']

:hi Search guibg=LightBlue
"" set hlsearch
nmap <F4> :set hlsearch! hlsearch?<CR>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <M-F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
