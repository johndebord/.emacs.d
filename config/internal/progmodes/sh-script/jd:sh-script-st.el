(defun jd:sh-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'sh-mode-hook 'jd:sh-mode-hook)

(jd:provide-feature jd:sh-script-st)
