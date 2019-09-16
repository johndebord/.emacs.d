(require 'abbrev (concat jd:lisp-prefix "abbrev.elc"))

(require 'jd:abbrev-kb.el (concat jd:path-prefix jd:internal-prefix "abbrev/jd:abbrev-kb.el"))
(require 'jd:abbrev-st.el (concat jd:path-prefix jd:internal-prefix "abbrev/jd:abbrev-st.el"))

(provide 'jd:abbrev.el)
