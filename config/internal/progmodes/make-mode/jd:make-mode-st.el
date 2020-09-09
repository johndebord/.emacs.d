(defun jd:makefile-mode-hook ()
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'makefile-mode-hook 'jd:makefile-mode-hook)

(jd:provide-feature jd:make-mode-st)
