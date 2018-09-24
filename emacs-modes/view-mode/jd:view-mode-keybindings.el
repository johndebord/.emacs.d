(provide 'jd:view-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `view-mode-map' --- `view.el'
(defun jd:view-mode-map ()
  (setf (cdr view-mode-map) nil)
  (define-key Buffer-menu-mode-map (kbd "q") 'quit-window))
(add-hook 'view-mode-hook 'jd:view-mode-map)
