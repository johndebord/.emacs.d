(defun jd:after-change-major-mode-hook ()
  (modify-syntax-entry ?_ "w"))

(add-hook 'after-change-major-mode-hook 'jd:after-change-major-mode-hook)

(jd:provide-feature jd:subr-st)
