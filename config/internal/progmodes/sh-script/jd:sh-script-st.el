(defun jd:sh-mode-hook ()
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'sh-mode-hook 'jd:sh-mode-hook)

(jd:provide-feature jd:sh-script-st)
