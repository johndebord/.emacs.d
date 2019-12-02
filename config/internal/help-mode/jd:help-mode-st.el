(add-hook 'help-mode-hook
          (lambda ()
            (font-lock-mode t)))

(defun jd:help-mode-scroll-down ()
  (interactive)
  (beginning-of-line)
  (forward-line)
  (recenter))

(defun jd:help-mode-scroll-up ()
  (interactive)
  (beginning-of-line)
  (forward-line -1)
  (recenter))

(provide 'jd:help-mode-st)
