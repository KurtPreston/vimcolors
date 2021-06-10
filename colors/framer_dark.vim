" ============================================================
" framer_dark
"
" URL:
" Author:
" License: MIT
" Last Change: 2021/05/24 20:54
" ============================================================

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

let s:p.normal.left = [[["#00BBFF", 39], ["#181818", 234]], [["#656565", 242], ["#181818", 234]]]
let s:p.normal.middle = [[["#00BBFF", 39], ["#181818", 234]]]
let s:p.normal.right = [[["#00BBFF", 39], ["#181818", 234]], [["#00BBFF", 39], ["#181818", 234]]]
let s:p.normal.error = [[["#EEEEEE", 255], ["#181818", 234]]]
let s:p.normal.warning = [[["#EEEEEE", 255], ["#181818", 234]]]

let s:p.inactive.left = [[["#656565", 242], ["#181818", 234]], [["#656565", 242], ["#181818", 234]]]
let s:p.inactive.middle = [[["#656565", 242], ["#181818", 234]]]
let s:p.inactive.right = [[["#656565", 242], ["#181818", 234]], [["#656565", 242], ["#181818", 234]]]

let s:p.insert.left = [[["#FB5599", 204], ["#181818", 234]], [["#EEEEEE", 255], ["#181818", 234]]]
let s:p.insert.middle = [[["#FB5599", 204], ["#181818", 234]]]
let s:p.insert.right = [[["#FB5599", 204], ["#181818", 234]], [["#FB5599", 204], ["#181818", 234]]]

let s:p.replace.left = [[["#EEEEEE", 255], ["#181818", 234]], [["#EEEEEE", 255], ["#181818", 234]]]
let s:p.replace.middle = [[["#EEEEEE", 255], ["#181818", 234]]]
let s:p.replace.right = [[["#EEEEEE", 255], ["#181818", 234]], [["#EEEEEE", 255], ["#181818", 234]]]

let s:p.visual.left = [[["#FF8867", 209], ["#181818", 234]], [["#EEEEEE", 255], ["#181818", 234]]]
let s:p.visual.middle = [[["#FF8867", 209], ["#181818", 234]]]
let s:p.visual.right = [[["#FF8867", 209], ["#181818", 234]], [["#FF8867", 209], ["#181818", 234]]]

let s:p.tabline.left = [[["#EEEEEE", 255], ["#181818", 234]]]
let s:p.tabline.tabsel = [[["#EEEEEE", 255], ["#181818", 234]]]
let s:p.tabline.middle = [[["#EEEEEE", 255], ["#181818", 234]]]
let s:p.tabline.right = [[["#EEEEEE", 255], ["#181818", 234]]]

let g:lightline#colorscheme#framer_dark#palette = lightline#colorscheme#flatten(s:p)

" ===================================
" Generated by Estilo 1.5.1
" https://github.com/jacoborus/estilo
" ===================================