(require 'debug (concat jd:lisp-prefix "emacs-lisp/debug.elc"))

(require 'jd:debug-kb.el (concat jd:path-prefix jd:internal-prefix "debug/jd:debug-kb.el"))
(require 'jd:debug-st.el (concat jd:path-prefix jd:internal-prefix "debug/jd:debug-st.el"))

(provide 'jd:debug.el)
