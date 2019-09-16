(require 'edebug (concat jd:lisp-prefix "emacs-lisp/edebug.elc"))

(require 'jd:edebug-kb.el (concat jd:path-prefix jd:internal-prefix "edebug/jd:edebug-kb.el"))
(require 'jd:edebug-st.el (concat jd:path-prefix jd:internal-prefix "edebug/jd:edebug-st.el"))

(provide 'jd:edebug.el)
