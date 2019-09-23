(require 'startup (concat jd:lisp-prefix "startup.elc"))

(require 'jd:startup-kb.el (concat jd:path-prefix jd:internal-prefix "startup/jd:startup-kb.elc"))
(require 'jd:startup-st.el (concat jd:path-prefix jd:internal-prefix "startup/jd:startup-st.elc"))

(provide 'jd:startup.el)
