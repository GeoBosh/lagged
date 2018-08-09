(TeX-add-style-hook
 "Lagged"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "left=1.8cm" "right=1.8cm" "top=2cm" "bottom=2cm") ("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "geometry"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:org5ef7378"
    "sec:orga857797"
    "sec:org31709fe"
    "sec:org75ae41e"
    "sec:org77a9231"
    "sec:org2aa0dd7"
    "sec:org900e3cd"
    "sec:orga8c0abe"
    "sec:orgb4d3658"
    "sec:orgc00b8eb"
    "sec:org2109177"
    "sec:orgb0cb9c9"
    "sec:org7900752"
    "sec:orgdd38f87"
    "sec:orgc8c11d8"
    "sec:org08cf90c"
    "sec:orgf08c685"
    "sec:org1ebdd3d"
    "sec:org58bfcbf"
    "sec:org36a85c4"
    "sec:org95242a5")
   (LaTeX-add-environments
    '("eptblFigure" LaTeX-env-args ["argument"] 0)
    '("epfigFigure" LaTeX-env-args ["argument"] 0)
    '("epFigure" LaTeX-env-args ["argument"] 0)))
 :latex)

