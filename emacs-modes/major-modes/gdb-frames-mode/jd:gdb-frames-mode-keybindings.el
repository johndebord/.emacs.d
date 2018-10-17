(provide 'jd:gdb-frames-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gdb-frames-mode-map' --- `gdb-mi.el'
(defun jd:gdb-frames-mode-map ()
  (setf (cdr gdb-frames-mode-map) nil)
  (define-key gdb-frames-mode-map (kbd "<jd:ret>") 'gdb-select-frame))
(add-hook 'gdb-frames-mode-hook 'jd:gdb-frames-mode-map)
