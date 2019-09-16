(require 'compile (concat jd:lisp-prefix "progmodes/compile.elc"))

(require 'jd:compile-kb.el (concat jd:path-prefix jd:internal-prefix "compile/jd:compile-kb.el"))
(require 'jd:compile-st.el (concat jd:path-prefix jd:internal-prefix "compile/jd:compile-st.el"))

(provide 'jd:compile.el)
