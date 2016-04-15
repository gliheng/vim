"""""""""""""""""""""""""""""""""
" close braces pairs
"""""""""""""""""""""""""""""""""
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap < <><ESC>i
:inoremap > <c-r>=ClosePair('>')<CR>

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf


"""""""""""Hot Keys"""""""""""""
"disable paste with middle mouse button
noremap <MiddleMouse> <LeftMouse>  
noremap <2-MiddleMouse> <2-LeftMouse>
noremap <3-MiddleMouse> <3-LeftMouse>

nnoremap <silent> <F2> :Tex<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

map <Up> gk
map <Down> gj

