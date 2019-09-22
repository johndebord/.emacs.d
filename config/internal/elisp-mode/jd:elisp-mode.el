(require 'elisp-mode (concat jd:lisp-prefix "progmodes/elisp-mode.elc"))

(require 'jd:elisp-mode-kb.el (concat jd:path-prefix jd:internal-prefix "elisp-mode/jd:elisp-mode-kb.elc"))
(require 'jd:elisp-mode-st.el (concat jd:path-prefix jd:internal-prefix "elisp-mode/jd:elisp-mode-st.elc"))

(provide 'jd:elisp-mode.el)
