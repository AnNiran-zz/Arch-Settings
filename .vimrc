"source /usr/share/vim/vimfiles/colors/anniran_hippie_1.vim
source /usr/share/vim/vimfiles/colors/boho2.vim

syntax on
set number

set visualbell
set list

set shiftwidth=1
set tabstop=4

"set listchars=tab:-\ ,trail:.,extends:\#,nbsp:.~
set listchars=tab:-\ ,trail:!,extends:\#,nbsp:!

"hi TabLine      guifg=#333333 guibg=#222222 gui=none ctermfg=254 ctermbg=238 cterm=none
"hi TabLineSel   guifg=#333333 guibg=#222222 gui=bold ctermfg=231 ctermbg=235 cterm=bold
"hi TabLineFill  guifg=#333333 guibg=#222222 gui=none ctermfg=254 ctermbg=238 cterm=none

"let g:netrw_browse_split = 4
let g:netrw_winsize = 25

"let g:netrw_altv = 1

"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Change directory to the current buffer when opening files.
set autochdir

" Move between splits:
" move down
"map <c-j> <c-s-w>j
map <c-j> <c-s-w>j
" move up
map <c-k> <c-s-w>k
" move right
map <c-l> <c-s-w>l
" move left
map <c-h> <c-s-w>h
