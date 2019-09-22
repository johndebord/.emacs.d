(require 'make-mode (concat jd:lisp-prefix "progmodes/make-mode.elc"))

(require 'jd:make-mode-kb.el (concat jd:path-prefix jd:internal-prefix "make-mode/jd:make-mode-kb.elc"))
(require 'jd:make-mode-st.el (concat jd:path-prefix jd:internal-prefix "make-mode/jd:make-mode-st.elc"))

(provide 'jd:make-mode.el)
