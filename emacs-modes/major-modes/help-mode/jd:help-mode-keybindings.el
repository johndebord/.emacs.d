;;; `help-mode-map' --- `help-mode.el'
(defun jd:help-mode-map ()
  (setf (cdr help-mode-map) nil)
  (define-key help-mode-map (kbd "<mouse-1>") 'push-button)
  (define-key help-mode-map (kbd "i") 'backward-button)
  (define-key help-mode-map (kbd "k") 'forward-button)
  (define-key help-mode-map (kbd "l") 'push-button)
  (define-key help-mode-map (kbd "q") 'quit-window))
(add-hook 'help-mode-hook 'jd:help-mode-map)

;;; `help-map' --- `help.el'
(defun jd:help-map ()
  (setf (cdr help-map) nil))
(add-hook 'help-mode-hook 'jd:help-map)

;;; `help-mode-menu' --- `help.el'
(defun jd:help-mode-menu ()
  (setf (cdr help-mode-menu) nil))
(add-hook 'help-mode-hook 'jd:help-mode-menu)

(provide 'jd:help-mode-keybindings.el)
