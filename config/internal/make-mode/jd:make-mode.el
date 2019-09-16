(require 'make-mode (concat jd:lisp-prefix "progmodes/make-mode.elc"))

(require 'jd:make-mode-kb.el (concat jd:path-prefix jd:internal-prefix "make-mode/jd:make-mode-kb.el"))
(require 'jd:make-mode-st.el (concat jd:path-prefix jd:internal-prefix "make-mode/jd:make-mode-st.el"))

(provide 'jd:make-mode.el)
