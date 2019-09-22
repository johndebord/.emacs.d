(require 'bindings (concat jd:lisp-prefix "bindings.elc"))

(require 'jd:bindings-kb.el (concat jd:path-prefix jd:internal-prefix "bindings/jd:bindings-kb.elc"))
(require 'jd:bindings-st.el (concat jd:path-prefix jd:internal-prefix "bindings/jd:bindings-st.elc"))

(provide 'jd:bindings.el)
