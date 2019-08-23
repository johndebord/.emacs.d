;;; `gdb-locals-mode-map' --- `gdb-mi.el'
(defun jd:gdb-locals-mode-map ()
  (setf (cdr gdb-locals-mode-map) nil)
  (define-key gdb-locals-mode-map (kbd "<jd:ret>") 'gdb-edit-locals-value))
(add-hook 'gdb-locals-mode-hook 'jd:gdb-locals-mode-map)

(provide 'jd:gdb-locals-mode-keybindings.el)
