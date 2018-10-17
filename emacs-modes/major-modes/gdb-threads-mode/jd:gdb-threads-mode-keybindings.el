(provide 'jd:gdb-threads-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gdb-threads-mode-map' --- `.el'
(defun jd:gdb-threads-mode-map ()
  (setf (cdr gdb-threads-mode-map) nil)
  (define-key gdb-threads-mode-map (kbd "<jd:ret>") 'gdb-select-thread))
(add-hook 'gdb-threads-mode-hook 'jd:gdb-threads-mode-map)
