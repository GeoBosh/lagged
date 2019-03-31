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
    "sec:orgfa7184e"
    "sec:org6d089da"
    "sec:org18c9cac"
    "sec:orgc5dad1d"
    "sec:orgb507196"
    "sec:org8bd6503"
    "sec:orgee8dc55"
    "sec:orgf0aa19e"
    "sec:org801bdd9"
    "sec:org5162825"
    "sec:orgc390c9a"
    "sec:org997b2c6"
    "sec:orgc699efe"
    "sec:org1788c69"
    "sec:orgd1a169d"
    "sec:org49ffca1"
    "sec:org99d682b"
    "sec:org1675942"
    "sec:org3e1dbfc"
    "sec:org94c0c15"
    "sec:org732c847"))
 :latex)

