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
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
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
    "sec:orgd054dcf"
    "sec:org8f6db68"
    "sec:org3f32f1c"
    "sec:orgdb6f89b"
    "sec:org202a737"
    "sec:org4c07da2"
    "sec:orgb694449"
    "sec:org0625d79"
    "sec:org6498f77"
    "sec:orgd96946a"
    "sec:org888f20a"
    "sec:org003dcb3"
    "sec:org532abca"
    "sec:org5438680"
    "sec:orgeae8383"
    "sec:orgfad94c7"
    "sec:orge77c1a5"
    "sec:org52539aa")))

