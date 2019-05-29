(TeX-add-style-hook
 "Lagged"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "left=1.8cm" "right=1.8cm" "top=2cm" "bottom=2cm") ("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
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
    "sec:orgfa847ad"
    "sec:org5157877"
    "sec:org677e7b4"
    "sec:orgaba311f"
    "sec:org45bda62"
    "sec:org86c31c2"
    "sec:org83c8cc5"
    "sec:org4838c8a"
    "sec:org333a640"
    "sec:orgeb8e692"
    "sec:orgaa40c0d"
    "sec:org1436e9d"
    "sec:org4f09cdf"
    "sec:orgef70436"
    "sec:orgfad224c"
    "sec:org79ef637"
    "sec:org6334117"
    "sec:org26c9eed"
    "sec:org0ce2bb8"
    "sec:org269ad87"))
 :latex)

