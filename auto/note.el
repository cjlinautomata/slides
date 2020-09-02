(TeX-add-style-hook "note"
 (lambda ()
    (LaTeX-add-environments
     "theorem")
    (LaTeX-add-labels
     "eq:emptystack"
     "item:1")
    (TeX-add-symbols
     '("BF" 1)
     '("mydef" 2)
     "R")
    (TeX-run-style-hooks
     "pst-node"
     "pstcol"
     "multicol"
     "latex2e"
     "art12"
     "article"
     "12pt")))

