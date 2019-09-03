;;; `apropos-mode-map' --- `apropos.el'
(defun jd:apropos-mode-map ()
  (setf (cdr apropos-mode-map) nil)
  (define-key apropos-mode-map (kbd "<jd:ret>") 'push-button)
  (define-key apropos-mode-map (kbd "<jd:tab>") 'forward-button)
  (define-key apropos-mode-map (kbd "<jd:S-tab>") 'backward-button)
  (define-key apropos-mode-map (kbd "q") 'quit-window))
(add-hook 'apropos-mode-hook 'jd:apropos-mode-map)

(provide 'jd:apropos-mode-keybindings.el)
