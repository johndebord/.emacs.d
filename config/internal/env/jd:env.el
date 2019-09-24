(require 'env (concat jd:lisp-prefix "env.elc"))

(require 'jd:env-kb.el (concat jd:path-prefix jd:internal-prefix "env/jd:env-kb.elc"))
(require 'jd:env-st.el (concat jd:path-prefix jd:internal-prefix "env/jd:env-st.elc"))

(provide 'jd:env.el)
