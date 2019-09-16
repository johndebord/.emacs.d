(require 'diff-mode (concat jd:lisp-prefix "vc/diff-mode.elc"))

(require 'jd:diff-mode-kb.el (concat jd:path-prefix jd:internal-prefix "diff-mode/jd:diff-mode-kb.el"))
(require 'jd:diff-mode-st.el (concat jd:path-prefix jd:internal-prefix "diff-mode/jd:diff-mode-st.el"))

(provide 'jd:diff-mode.el)
