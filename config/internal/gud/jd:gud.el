(require 'gud (concat jd:lisp-prefix "progmodes/gud.elc"))

(require 'jd:gud-kb.el (concat jd:path-prefix jd:internal-prefix "gud/jd:gud-kb.el"))
(require 'jd:gud-st.el (concat jd:path-prefix jd:internal-prefix "gud/jd:gud-st.el"))

(provide 'jd:gud.el)
