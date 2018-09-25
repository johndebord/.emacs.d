(provide 'jd:Buffer-menu-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `Buffer-menu-mode-map' --- `buff-menu.el'
(defun jd:Buffer-menu-mode-map ()
  (setf (cdr Buffer-menu-mode-map) nil)
  (define-key Buffer-menu-mode-map (kbd "<jd:ret>") 'Buffer-menu-this-window)
  (define-key Buffer-menu-mode-map (kbd "<jd:S-ret>") 'Buffer-menu-view)
  (define-key Buffer-menu-mode-map (kbd "q") 'quit-window))
(add-hook 'Buffer-menu-mode-hook 'jd:Buffer-menu-mode-map)
