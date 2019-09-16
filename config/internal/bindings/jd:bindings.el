(require 'bindings (concat jd:lisp-prefix "bindings.elc"))

(require 'jd:bindings-kb.el (concat jd:path-prefix jd:internal-prefix "bindings/jd:bindings-kb.el"))
(require 'jd:bindings-st.el (concat jd:path-prefix jd:internal-prefix "bindings/jd:bindings-st.el"))

(provide 'jd:bindings.el)
