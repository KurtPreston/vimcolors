let s:gry0 = "#fffdee"
let s:gry1 = "#f1e5d6"
let s:gry2 = "#737484"
let s:gry3 = "#5b5b6a"
let s:gry4 = "#353644"
let s:red_ = "#c54e36"
let s:yllw = "#fcd900"
let s:gren = "#26861f"
let s:blue = "#0077d1"

let s:p = { "normal" : {} , "inactive": {} , "insert"  : {} ,
          \ "replace": {} , "visual"  : {} , "tabline" : {} }

let s:p.normal.left     = [[ s:gry0, s:gry2 ], [ s:gry3, s:gry1 ]]
let s:p.normal.middle   = [[ s:gry3, s:gry1 ]]
let s:p.normal.right    = [[ s:gry0, s:gry2 ], [ s:gry0, s:gry2 ]]

let s:p.inactive.left   = copy(s:p.normal.middle)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.inactive.right  = copy(s:p.normal.middle)

let s:p.insert.left     = [[ s:gry0, s:gren ]]
let s:p.insert.right    = [[ s:gry0, s:gren ], [ s:gry0, s:gren ]]

let s:p.visual.left     = [[ s:gry0, s:blue ]]
let s:p.visual.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]

let s:p.replace.left    = [[ s:gry0, s:red_ ]]
let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]

let s:p.tabline.left    = [[ s:gry0, s:gry2 ]]
let s:p.tabline.tabsel  = copy(s:p.normal.middle)
let s:p.tabline.right   = [[ s:gry0, s:gry2 ]]

let s:p.normal.error    = [[ s:red_, s:gry0 ]]
let s:p.normal.warning  = [[ s:yllw, s:gry4 ]]

let g:lightline#colorscheme#stellarized_light#palette =
  \ lightline#colorscheme#fill(s:p)

