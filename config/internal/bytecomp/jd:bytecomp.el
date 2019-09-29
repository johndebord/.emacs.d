(require 'bytecomp (concat jd:lisp-prefix "emacs-lisp/bytecomp.elc"))

(require 'jd:bytecomp-kb.el (concat jd:internal-prefix "bytecomp/jd:bytecomp-kb.elc"))
(require 'jd:bytecomp-st.el (concat jd:internal-prefix "bytecomp/jd:bytecomp-st.elc"))

(provide 'jd:bytecomp.el)
