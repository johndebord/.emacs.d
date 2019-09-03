;;; `gdb-breakpoints-mode-map' --- `gdb-mi.el'
(defun jd:gdb-breakpoints-mode-map ()
  (setf (cdr gdb-breakpoints-mode-map) nil)
  (define-key gdb-breakpoints-mode-map (kbd "<jd:ret>") 'gdb-goto-breakpoint)
  (define-key gdb-breakpoints-mode-map (kbd "<jd:spc>") 'gdb-toggle-breakpoint)
  (define-key gdb-breakpoints-mode-map (kbd "<jd:bks>") 'gdb-delete-breakpoint))
(add-hook 'gdb-breakpoints-mode-hook 'jd:gdb-breakpoints-mode-map)

(provide 'jd:gdb-breakpoints-mode-keybindings.el)
