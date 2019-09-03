;;; `dired-mode-map' --- `dired.el'
(defun jd:dired-mode-map ()
  (setf (cdr dired-mode-map) nil)
  (define-key dired-mode-map (kbd "<jd:ret>") 'dired-find-file)
  (define-key dired-mode-map (kbd "q") 'quit-window))
(add-hook 'dired-mode-hook 'jd:dired-mode-map)

(provide 'jd:dired-mode-keybindings.el)
