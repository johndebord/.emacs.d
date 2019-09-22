(require 'eldoc (concat jd:lisp-prefix "emacs-lisp/eldoc.elc"))

(require 'jd:eldoc-kb.el (concat jd:path-prefix jd:internal-prefix "eldoc/jd:eldoc-kb.elc"))
(require 'jd:eldoc-st.el (concat jd:path-prefix jd:internal-prefix "eldoc/jd:eldoc-st.elc"))

(provide 'jd:eldoc.el)
