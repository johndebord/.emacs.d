(provide 'jd:gdb-registers-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gdb-registers-mode-map' --- `gdb-mi.el'
(defun jd:gdb-registers-mode-map ()
  (setf (cdr gdb-registers-mode-map) nil)
  (define-key gdb-registers-mode-map (kbd "<jd:ret>") 'gdb-edit-register-value))
(add-hook 'gdb-registers-mode-hook 'jd:gdb-registers-mode-map)
