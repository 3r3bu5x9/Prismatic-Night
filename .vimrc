set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'" required
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
set number relativenumber
set cursorline
highlight LineNr ctermfg=0
highlight CursorLineNr ctermfg=7
hi CursorLine guifg=NONE guibg=#222D32 ctermbg=Black gui=NONE term=NONE cterm=NONE
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:ycm_semantic_triggers = { 'cpp': [ 're!.' ] }
let g:ycm_autoclose_preview_window_after_insertion = 1


"Status Line
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?''.l:branchname.'':''
endfunction

" Set status line display
set laststatus=2
hi StatusLine ctermfg=8 ctermbg=1 cterm=NONE
hi StatusLineNC ctermfg=8 ctermbg=1 cterm=NONE
hi User1 ctermfg=8 ctermbg=9
hi User2 ctermfg=NONE ctermbg=NONE
hi User3 ctermfg=8 ctermbg=4
hi User4 ctermfg=8 ctermbg=6
hi User5 ctermfg=8 ctermbg=5
hi User6 ctermfg=8 ctermbg=2
hi User7 ctermfg=8 ctermbg=3
hi User8 ctermfg=8 ctermbg=15

  let g:currentmode={
      \'n' : 'Normal',
      \'no' : 'N·Operator Pending',
      \'v' : 'Visual',
      \'V' : 'V·Line',
      \'^V' : 'V·Block',
      \'s' : 'Select',
      \'S': 'S·Line',
      \'^S' : 'S·Block',
      \'i' : 'Insert',
      \'R' : 'Replace',
      \'Rv' : 'V·Replace',
      \'c' : 'Command',
      \'cv' : 'Vim Ex',
      \'ce' : 'Ex',
      \'r' : 'Prompt',
      \'rm' : 'More',
      \'r?' : 'Confirm',
      \'!' : 'Shell',
      \'t' : 'Terminal'
      \}

" Get current mode
function! ModeCurrent() abort
    let l:modecurrent = mode()
    let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    let l:current_status_mode = l:modelist
    return l:current_status_mode
endfunction

set statusline=\                   			  " Padding
set statusline+=%n                 			  " buffer number
set statusline+=\ %2*\             			  " Padding & end colour
set statusline+=\%1*\              			  " switch colour
set statusline+=%{ModeCurrent()}   			  " Vim Mode
set statusline+=\ %2*\             			  " Padding & end colour
set statusline+=\%7*\              			  " switch colour
set statusline+=%f%m               			  " filename and modified flag
set statusline+=\ %2*\             			  " Padding & end colour
set statusline+=\%6*\              			  " switch colour
set statusline+=%{StatuslineGit()} 			  " git status
set statusline+=\ %2*\             			  " Padding & end colour
set statusline+=%=                 			  " Switch to right-side
set statusline+=\                  			  " Padding
set statusline+=\ %5*\             			  " switch colour
set statusline+=%y                 			  " File type
set statusline+=\ %2*\             			  " Padding & end colour
set statusline+=\%3*\              			  " switch colour
set statusline+=col                			  " Text
set statusline+=\                  			  " Padding
set statusline+=%c                 			  " Current column
set statusline+=\ %2*\             			  " Padding & end colour
set statusline+=\%4*\              			  " switch colour
set statusline+=line               			  " Text
set statusline+=\                  			  " Padding
set statusline+=%l:%L              			  " current line:Total line
set statusline+=\ %2*\             			  " Padding & end colour
set statusline+=\%8*\                         " switch colour
set statusline+=%{strlen(&fenc)?&fenc:'none'} " encoding
set statusline+=\                   		  " Padding

" Encoding
set encoding=utf-8
