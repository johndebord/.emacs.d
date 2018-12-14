(provide 'jd:diff-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `-mode-map' --- `.el'
(defun jd:-mode-map ()
  (setf (cdr -mode-map) nil)
  (define-key -mode-map (kbd "") '))
(add-hook 'diff-mode-hook 'jd:-mode-map)

;; diff-minor-mode-map 	diff-mode-map
;; diff-mode-menu 	diff-mode-shared-map
