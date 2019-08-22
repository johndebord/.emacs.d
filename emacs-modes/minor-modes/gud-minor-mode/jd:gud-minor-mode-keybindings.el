(provide 'jd:gud-minor-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gud-minor-mode-map' --- `gud.el'
(defun jd:gud-minor-mode-map ()
  (setf (cdr gud-minor-mode-map) nil))
(add-hook 'gud-minor-mode-hook 'jd:gud-minor-mode-map)
