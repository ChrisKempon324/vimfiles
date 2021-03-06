" Vim color file - neverland2.vim
" Eyes are sober, this is the plan
" I'm sitting in a car heading Neverland
" Author: Magnus Woldrich <trapd00r@trapd00r.se>

set background=dark
hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="neverland2"

hi Normal          guifg=#ffffff guibg=#121212
set background=dark

hi Boolean         guifg=#af5fff
hi Character       guifg=#afaf5f
hi Number          guifg=#0087ff
hi String          guifg=#d7af5f
hi Conditional     guifg=#ff0000               gui=none
hi Constant        guifg=#af5fff               gui=none
hi Cursor          guifg=#afd787 guibg=#dadada
hi Debug           guifg=#ffd7ff               gui=none
hi Define          guifg=#5fd7ff
hi Delimiter       guifg=#626262

hi DiffAdd                       guibg=#121212
hi DiffChange      guifg=#d7afaf guibg=#1c1c1c
hi DiffDelete      guifg=#d70087 guibg=#080808
hi DiffText                      guibg=#121212 gui=none

hi Directory       guifg=#87ff00               gui=none
hi Error           guifg=#ffafff guibg=#121212
hi ErrorMsg        guifg=#ff00af guibg=#121212 gui=none
hi Exception       guifg=#87ff00               gui=none
hi Float           guifg=#af5fff
hi FoldColumn      guifg=#5f87af  guibg=#121212 gui=none
hi Folded          guifg=#585858  guibg=#262626 gui=none
hi Function        guifg=#ff005f " sub..
hi Identifier      guifg=#d75f00 " ..foo
hi Ignore          guifg=#808080 guibg=#080808
hi IncSearch       guifg=#d7ffaf guibg=#000000

hi Keyword         guifg=#5fafd7               gui=none
hi Label           guifg=#ffffaf               gui=none
hi Macro           guifg=#d7ffaf
hi SpecialKey      guifg=#5fd7ff

hi MatchParen      guifg=#ff0000 guibg=#1c1c1c gui=none
hi ModeMsg         guifg=#ffaf5f
hi MoreMsg         guifg=#ffaf5f
hi Operator        guifg=#00ff00

" complete menu
hi Pmenu           guifg=#af875f guibg=#000000 gui=none
hi PmenuSel        guifg=#ff0000 guibg=#262626 gui=none
hi PmenuSbar       guifg=#000000 guibg=#121212 gui=none
hi PmenuThumb      guifg=#af875f guibg=#000000 gui=none

hi PreCondit       guifg=#87ff00               gui=none
hi PreProc         guifg=#ffafd7
hi Question        guifg=#5fd7ff
hi Repeat          guifg=#d7005f               gui=none
hi Search          guifg=#d70000 guibg=#121212

" marks column
hi SignColumn      guifg=#87ff00 guibg=#262626
hi SpecialChar     guifg=#d7005f               gui=none
hi SpecialComment  guifg=#8a8a8a               gui=none
hi Special         guifg=#5fd7ff  guibg=#080808
hi SpecialKey      guifg=#8a8a8a

hi SpellBad        guifg=#ff0000 guibg=#121212 gui=none
hi SpellCap        guifg=#875f00 guibg=#121212 gui=none
hi SpellRare       guifg=#875f87 guibg=#121212 gui=none
hi SpellLocal      guifg=#af0000 guibg=#121212 gui=none

hi Statement       guifg=#ffff87               gui=none " my...
hi StatusLine      guifg=#1c1c1c guibg=#af8700
hi StatusLineNC    guifg=#1c1c1c guibg=#878700
hi StorageClass    guifg=#ff8700
hi Structure       guifg=#5fd7ff
hi Tag             guifg=#d7005f
hi Title           guifg=#0000ff
hi Todo            guifg=#d70000 guibg=#121212 gui=none

hi Typedef         guifg=#5fd7ff
hi Type            guifg=#5fd7ff               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=none
hi VisualNOS                     guibg=#444444
hi Visual                        guibg=#262626
hi WarningMsg      guifg=#0000ff guibg=#444444 gui=none
hi WildMenu        guifg=#5fd7ff guibg=#000000

hi Comment         guifg=#87875f
hi ColorColumn                   guibg=#262626
hi CursorLine                    guibg=#1c1c1c gui=none
hi CursorColumn                  guibg=#1c1c1c
hi LineNr          guifg=#626262 guibg=#121212
hi NonText         guifg=#121212 guibg=#121212

hi TabLine         guifg=#878700 guibg=#121212
hi TabLineFill     guifg=#121212 guibg=#121212
hi TabLineSel      guifg=#ffd700 guibg=#1c1c1c

" Support for 256-color terminal
if &t_Co > 255
   hi Normal          ctermfg=256 ctermbg=233
   set background=dark

   hi Boolean         ctermfg=135
   hi Character       ctermfg=143
   hi Number          ctermfg=33
   hi String          ctermfg=179
   hi Conditional     ctermfg=196               cterm=none
   hi Constant        ctermfg=135               cterm=none
   hi Cursor          ctermfg=150  ctermbg=253
   hi Debug           ctermfg=225               cterm=none
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=233
   hi DiffChange      ctermfg=181 ctermbg=234
   hi DiffDelete      ctermfg=162 ctermbg=232
   hi DiffText                    ctermbg=233 cterm=none

   hi Directory       ctermfg=118               cterm=none
   hi Error           ctermfg=219 ctermbg=233
   hi ErrorMsg        ctermfg=199 ctermbg=233    cterm=none
   hi Exception       ctermfg=118               cterm=none
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67   ctermbg=233 cterm=none
   hi Folded          ctermfg=240  ctermbg=235 cterm=none
   hi Function        ctermfg=197 " sub..
   hi Identifier      ctermfg=166 " ..foo
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=74                cterm=none
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=196  ctermbg=234 cterm=none
   hi ModeMsg         ctermfg=215
   hi MoreMsg         ctermfg=215
   hi Operator        ctermfg=46

   " complete menu
   hi Pmenu           ctermfg=137 ctermbg=233 cterm=none
   hi PmenuSel        ctermfg=196 ctermbg=234 cterm=none
   hi PmenuSbar       ctermfg=000 ctermbg=233 cterm=none
   hi PmenuThumb      ctermfg=137 ctermbg=235 cterm=none

   hi PreCondit       ctermfg=118               cterm=none
   hi PreProc         ctermfg=218
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=none
   hi Search          ctermfg=160 ctermbg=233

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=none
   hi SpecialComment  ctermfg=245               cterm=none
   hi Special         ctermfg=81  ctermbg=232
   hi SpecialKey      ctermfg=245

   hi SpellBad        ctermfg=196 ctermbg=233 cterm=none
   hi SpellCap        ctermfg=094 ctermbg=233 cterm=none
   hi SpellRare       ctermfg=096 ctermbg=233 cterm=none
   hi SpellLocal      ctermfg=124 ctermbg=233 cterm=none

   hi Statement       ctermfg=228               cterm=none
   hi StatusLine      ctermfg=234 ctermbg=136
   hi StatusLineNC    ctermfg=234 ctermbg=100
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=21
   hi Todo            ctermfg=160 ctermbg=233   cterm=none

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=none
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=21  ctermbg=238   cterm=none
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=101
   hi ColorColumn                 ctermbg=235
   hi CursorLine                  ctermbg=234   cterm=none
   hi CursorColumn                ctermbg=234
   hi LineNr          ctermfg=241 ctermbg=233
   hi NonText         ctermfg=233 ctermbg=233

   hi TabLine         ctermfg=100 ctermbg=233
   hi TabLineFill     ctermfg=233 ctermbg=233
   hi TabLineSel      ctermfg=220 ctermbg=234
end
