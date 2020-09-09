(defun jd:help-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'help-mode-hook 'jd:help-mode-hook)

(jd:provide-feature jd:help-mode-st)
