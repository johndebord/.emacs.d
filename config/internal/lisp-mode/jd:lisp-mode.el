(require 'lisp-mode (concat jd:lisp-prefix "emacs-lisp/lisp-mode.elc"))

(require 'jd:lisp-mode-kb.el (concat jd:path-prefix jd:internal-prefix "lisp-mode/jd:lisp-mode-kb.elc"))
(require 'jd:lisp-mode-st.el (concat jd:path-prefix jd:internal-prefix "lisp-mode/jd:lisp-mode-st.elc"))

(provide 'jd:lisp-mode.el)
