(require 'asm-mode (concat jd:lisp-prefix "progmodes/asm-mode.elc"))

(require 'jd:asm-mode-kb.el (concat jd:path-prefix jd:internal-prefix "asm-mode/jd:asm-mode-kb.elc"))
(require 'jd:asm-mode-st.el (concat jd:path-prefix jd:internal-prefix "asm-mode/jd:asm-mode-st.elc"))

(provide 'jd:asm-mode.el)