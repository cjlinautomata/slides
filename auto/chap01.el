(TeX-add-style-hook
 "chap01"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "14pt" "xcolor=pstdvips")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "graphics"
    "color"
    "epsfig"
    "amssymb"
    "amsmath"
    "verbatim"
    "alltt"
    "multicol"
    "pstcol"
    "pst-node"
    "beamerprosper"
    "tikz")
   (TeX-add-symbols
    '("BF" 1)
    '("mydef" 2)
    "R"))
 :latex)

