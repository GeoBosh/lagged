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
    "sec:orgc371a54"
    "sec:orge6d2c91"
    "sec:org4ec62a3"
    "sec:org06e120a"
    "sec:org24a9d23"
    "sec:org0a34409"
    "sec:org49c6a69"
    "sec:org2bdf302"
    "sec:org5b96f3e"
    "sec:org6d0781c"
    "sec:org0d28112"
    "sec:org5b4aa19"
    "sec:orgc12a672"
    "sec:org68a3c70"
    "sec:org472d3cf"
    "sec:org5e1ae2d"
    "sec:org27b9a04"
    "sec:org1ca5f3c"
    "sec:org0ce69ec"
    "sec:org8e6c5d3"))
 :latex)

