" Vim color file
" Maintainer:   Barlog M. <barlog@tanelorn.li>
" Last Change:  2019.12.07
" :runtime syntax/hitest.vim

highlight clear
if exists("syntax_on")
    syntax reset
endif
set background=dark
let g:colors_name="oceanic-primal"

" main palette
let s:black='#1b2b34'
let s:black_light='#343d46'
let s:gray_dark='#4f5b66'
let s:gray='#65737e'
let s:gray_light='#a7adba'
let s:white='#c0c5ce'
let s:silver='#cdd3de'
let s:silver_light='#d8dee9'
let s:white_pure='#ffffff'

" syntax palette
let s:red='#ec5f67'
let s:orange='#f99157'
let s:green='#99c794'
let s:yellow='#fac863'
let s:blue='#6699cc'
let s:blue_light='#bcdaf7'
let s:magenta='#c594c5'
let s:cyan='#62b3b2'

let s:none='NONE'

function! Hi(group, fg, bg, at)
    exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg . " gui=" . a:at
endfunction

" base colors
call Hi('Normal',       s:white, s:black, s:none)
call Hi('NonText',      s:gray, s:none, s:none)
call Hi('ErrorMsg',     s:red,  s:none, s:none)
call Hi('WarningMsg',   s:orange,  s:none, s:none)

call Hi('Cursor',       s:black, s:white, s:none)
call Hi('CursorColumn', s:none, s:black_light, s:none)
call Hi('CursorLine',   s:none, s:black_light, s:none)

call Hi('ColorColumn',  s:none, s:black_light, s:none)

call Hi('LineNr',       s:gray, s:none, s:none)
call Hi('CursorLineNr', s:gray, s:none, s:none)

call Hi('Directory',    s:blue, s:none, s:none)

call Hi('IncSearch',    s:white_pure, s:blue, s:none)
call Hi('Search',       s:white_pure, s:blue, s:none)
call Hi('MatchParen',   s:white_pure, s:blue, s:none)

call Hi('VertSplit',    s:black, s:gray, s:none)

call Hi('SpecialKey',   s:gray_dark, s:none, s:none)

call Hi('Visual',       s:none, s:gray_dark, s:none)

call Hi('DiffAdd',      s:green, s:black_light, s:none)
call Hi('DiffChange',   s:silver, s:black_light, s:none)
call Hi('DiffDelete',   s:red, s:black_light, s:none)
call Hi('DiffText',     s:blue_light, s:black_light, s:none)

call Hi('MoreMsg',      s:green, s:none, 'bold')
call Hi('ModeMsg',      s:green, s:none, 'bold')

call Hi('StatusLine',   s:gray_dark, s:black, s:none)
call Hi('StatusLineNC', s:gray, s:black, s:none)
call Hi('StatusLineTerm',   s:gray_dark, s:green, s:none)
call Hi('StatusLineTermNC', s:gray, s:green, s:none)

call Hi('Question',      s:green, s:none, s:none)

call Hi('TabLine',   s:gray, s:black_light, s:none)
call Hi('TabLineFill', s:gray, s:black_light, s:none)
call Hi('TabLineSel', s:green, s:black_light, s:none)

call Hi('Pmenu',   s:gray_light, s:black_light, s:none)
call Hi('PmenuSel', s:white_pure, s:blue, s:none)
call Hi('PmenuSbar', s:none, s:gray_dark, s:none)
call Hi('PmenuThumb', s:none, s:silver_light, s:none)

call Hi('WildMenu', s:white_pure, s:blue, s:none)

call Hi('Folded', s:gray, s:black_light, s:none)
call Hi('FoldColumn', s:blue, s:black, s:none)

call Hi('SignColumn', s:black, s:black, s:none)

call Hi('Title', s:blue, s:none, s:none)

" syntax
call Hi('Comment',      s:gray, s:none, s:none)

call Hi('Constant',     s:white, s:none, s:none)
call Hi('String',       s:green, s:none , s:none)
call Hi('Character',    s:red, s:none, s:none)
call Hi('Number',       s:orange, s:none, s:none)
call Hi('Boolean',      s:orange, s:none, s:none)
call Hi('Float',        s:orange, s:none, s:none)

call Hi('Identifier',   s:white, s:none, s:none)
call Hi('Function',     s:white, s:none, s:none)

call Hi('Statement',    s:blue, s:none, s:none)
call Hi('Conditional',  s:blue, s:none, s:none)
call Hi('Repeat',       s:blue, s:none, s:none)
call Hi('Label',        s:blue, s:none, s:none)
call Hi('Operator',     s:yellow, s:none, s:none)
call Hi('Keyword',      s:blue, s:none, s:none)
call Hi('Exception',    s:blue, s:none, s:none)

call Hi('PreProc',      s:cyan, s:none, s:none)
call Hi('Include',      s:blue, s:none, s:none)
call Hi('Define',       s:blue, s:none, s:none)
call Hi('Macro',        s:cyan, s:none, s:none)
call Hi('PreCondit',    s:cyan, s:none, s:none)

call Hi('Type',         s:blue, s:none, s:none)
call Hi('StorageClass', s:blue, s:none, s:none)
call Hi('Structure',    s:blue, s:none, s:none)
call Hi('Typedef',      s:blue, s:none, s:none)

call Hi('Special',      s:cyan, s:none, s:none)
call Hi('SpecialChar',  s:red, s:none, s:none)
call Hi('Tag',          s:blue_light, s:none, s:none)
call Hi('Delimiter',    s:yellow, s:none, s:none)
call Hi('SpecialComment', s:gray_light, s:none, s:none)
call Hi('Debug',        s:red, s:none, s:none)

call Hi('Underlined',   s:blue_light, s:none, 'underline')
call Hi('Ignore',       s:gray, s:none, s:none)
call Hi('Error',        s:white, s:red, s:none)
call Hi('Todo',         s:magenta, s:none, s:none)

" terminal (vim)
let g:terminal_ansi_colors = [
    \s:black, s:red, s:green, s:yellow, s:blue, s:magenta, s:cyan, s:white,
    \s:gray, s:red, s:green, s:yellow, s:blue, s:magenta, s:cyan, s:white]

" terminal (neovim)
let g:terminal_color_0=s:black
let g:terminal_color_8=s:gray

let g:terminal_color_1=s:red
let g:terminal_color_9=s:red

let g:terminal_color_2=s:green
let g:terminal_color_10=s:green

let g:terminal_color_3=s:yellow 
let g:terminal_color_11=s:yellow

let g:terminal_color_4=s:blue
let g:terminal_color_12=s:blue

let g:terminal_color_5=s:magenta
let g:terminal_color_13=s:magenta

let g:terminal_color_6=s:cyan
let g:terminal_color_14=s:cyan

let g:terminal_color_7=s:white
let g:terminal_color_15=s:white

let g:terminal_color_background=s:black
let g:terminal_color_foreground=s:white

" neovim
call Hi('NvimInternalError',      s:red, s:none, s:none)

call Hi('RedrawDebugClear',     s:black, s:yellow, s:none)
call Hi('RedrawDebugComposed',  s:black, s:green, s:none)
call Hi('RedrawDebugRecompose', s:black, s:red, s:none)

" vim-gitgutter
call Hi('GitGutterAdd',         s:green, s:none, s:none)
call Hi('GitGutterChange',      s:blue, s:none, s:none)
call Hi('GitGutterDelete',      s:red, s:none, s:none)
call Hi('GitGutterChangeDelete',s:magenta, s:none, s:none)

" coc
call Hi('CocErrorSign',     s:red, s:none, s:none)
call Hi('CocWarningSign',   s:orange, s:none, s:none)
call Hi('CocInfoSign',      s:yellow, s:none, s:none)
call Hi('CocHintSign',      s:blue, s:none, s:none)
call Hi('CocCodeLens',      s:gray, s:none, s:none)
call Hi('CocHighlightText', s:none, s:black_light, s:none)

