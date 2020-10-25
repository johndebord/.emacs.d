(defun jd:makefile-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'makefile-mode-hook 'jd:makefile-mode-hook)

(jd:provide-feature jd:make-mode-st)
