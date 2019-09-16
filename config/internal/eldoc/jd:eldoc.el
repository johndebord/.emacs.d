(require 'eldoc (concat jd:lisp-prefix "emacs-lisp/eldoc.elc"))

(require 'jd:eldoc-kb.el (concat jd:path-prefix jd:internal-prefix "eldoc/jd:eldoc-kb.el"))
(require 'jd:eldoc-st.el (concat jd:path-prefix jd:internal-prefix "eldoc/jd:eldoc-st.el"))

(provide 'jd:eldoc.el)
