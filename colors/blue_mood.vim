" =============================================================================
" Filename: autoload/lightline/colorscheme/blue_mood.vim
" Author: lmintmate
" License: MIT License
" Description: Blue Mood theme for Lightline
" =============================================================================

" lightline doesn't seem to detect theme names with dashes (e.g. blue-mood). It supports underscores however (e.g. blue_mood).

if exists('g:lightline')

let s:whitesmoke="#f5f5f5"
let s:bg2="#235c94"
let s:gold="#ffd700"
let s:cyan= "#00ffff"
let s:gray72="#b8b8b8"
let s:chartreusegreen="#7fff00"
let s:tomato="#ff6347"
let s:cyan3="#00cdcd"
let s:red="#ff0000"
let s:warning2="#ff8800"
let s:yellow="#ffff00"
let s:ffb90f="#ffb90f"
let s:steelblue3="#4f94cd"
let s:black="#000000"
let s:bfbfbf="#bfbfbf"
let s:darkgray="#4d4d4d"
let s:lightgray="#cccccc"
let s:blue4="#00008b"
let s:goldenrod="#daa520"

let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}, 'command':{}}

"quickref: lightline structure (from left to right): Left: 1st set of brackets - mode, 2nd set of brackets - filename. Middle section. Right: 1st set of brackets - percentage, 2nd set of brackets - cursor location.
" colors between the brackets: the first color corresponds to fg (color of letters), and the second corresponds to bg (color of background).

" intended look here: Left: 1st set of brackets: steelblue3 background with black letters, 2nd set of brackets: bfbfbf gray background with black letters. Rest of the line also bfbfbf bg - black fg.
let s:p.normal.left     = [[s:black, s:steelblue3], [s:black, s:bfbfbf]]
let s:p.normal.middle   = [[s:black, s:bfbfbf]]
let s:p.normal.right    = [[s:black, s:bfbfbf], [s:black, s:bfbfbf]]

" intended look here: Error: The whole line red bg and whitesmoke fg. Warning: The whole line yellow bg and black fg.
let s:p.normal.error    = [[s:whitesmoke, s:red]]
let s:p.normal.warning  = [[s:black, s:yellow]]

" intended look here: The whole line darkgray bg and lightgray fg.
let s:p.inactive.left   = [[s:lightgray, s:darkgray], [s:lightgray, s:darkgray]]
let s:p.inactive.middle = [[s:lightgray, s:darkgray]]
let s:p.inactive.right  = [[s:lightgray, s:darkgray], [s:lightgray, s:darkgray]]

" intended look here: Left: 1st set of brackets: chartreusegreen background with black letters, 2nd set of brackets: bfbfbf gray background with black letters. Rest of the line also bfbfbf bg - black fg.
let s:p.insert.left     = [[s:black, s:chartreusegreen], [s:black, s:bfbfbf]]
let s:p.insert.middle   = [[s:black, s:bfbfbf]]
let s:p.insert.right    = [[s:black, s:bfbfbf], [s:black, s:bfbfbf]]

" intended look here: Left: 1st set of brackets: tomato background with black letters, 2nd set of brackets: bfbfbf gray background with black letters. Rest of the line also bfbfbf bg - black fg.
let s:p.replace.left    = [[s:black, s:tomato], [s:black, s:bfbfbf]]
let s:p.replace.middle  = [[s:black, s:bfbfbf]]
let s:p.replace.right   = [[s:black, s:bfbfbf], [s:black, s:bfbfbf]]

" intended look here: Left: 1st set of brackets: gold background with black letters, 2nd set of brackets: bfbfbf gray background with black letters. Rest of the line also bfbfbf bg - black fg.
let s:p.visual.left     = [[s:black, s:gold], [s:black, s:bfbfbf]]
let s:p.visual.middle   = [[s:black, s:bfbfbf]]
let s:p.visual.right    = [[s:black, s:bfbfbf], [s:black, s:bfbfbf]]

" intended look here: The whole line gray72 bg and bg2 (color close to the default bg, but not quite) fg. The selected tab (tabsel) has bfbfbf bg and black fg.
let s:p.tabline.left    = [[s:gray72, s:bg2]]
let s:p.tabline.tabsel  = [[s:black, s:bfbfbf]]
let s:p.tabline.middle  = [[s:gray72, s:bg2]]
let s:p.tabline.right   = [[s:gray72, s:bg2]]

" intended look here: The whole line goldenrod bg and blue4 fg.
let s:p.terminal.left   = [[s:blue4, s:goldenrod], [s:blue4, s:goldenrod]]
let s:p.terminal.middle = [[s:blue4, s:goldenrod]]
let s:p.terminal.right  = [[s:blue4, s:goldenrod], [s:blue4, s:goldenrod]]

" intended look here: The whole line yellow bg and red fg.
let s:p.command.left   = [[s:red, s:yellow], [s:red, s:yellow]]
let s:p.command.middle = [[s:red, s:yellow]]
let s:p.command.right  = [[s:red, s:yellow], [s:red, s:yellow]]

let g:lightline#colorscheme#blue_mood#palette = lightline#colorscheme#fill(s:p)

endif
