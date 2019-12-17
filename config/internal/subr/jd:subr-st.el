;; I've changed `cua-mode` to not, by default, be a global minor mode. Because
;; of this, I must manually specify it to be activiated upon each change of a
;; major mode that derives from `fundamental-mode`.
;; (defun jd:after-change-major-mode-hook ()
;;   (cua-mode 1))
;; 
;; (add-hook 'after-change-major-mode-hook 'jd:after-change-major-mode-hook)

(provide 'jd:subr-st)
