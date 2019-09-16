(require 'esh-mode (concat jd:lisp-prefix "eshell/esh-mode.elc"))

(require 'jd:esh-mode-kb.el (concat jd:path-prefix jd:internal-prefix "esh-mode/jd:esh-mode-kb.el"))
(require 'jd:esh-mode-st.el (concat jd:path-prefix jd:internal-prefix "esh-mode/jd:esh-mode-st.el"))

(provide 'jd:esh-mode.el)
