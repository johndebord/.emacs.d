(require 'help-mode (concat jd:lisp-prefix "help-mode.elc"))

(require 'jd:help-mode-kb.el (concat jd:path-prefix jd:internal-prefix "help-mode/jd:help-mode-kb.el"))
(require 'jd:help-mode-st.el (concat jd:path-prefix jd:internal-prefix "help-mode/jd:help-mode-st.el"))

(provide 'jd:help-mode.el)
