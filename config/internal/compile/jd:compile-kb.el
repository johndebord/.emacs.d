(setf (cdr compilation-button-map) nil)
(setf (cdr compilation-menu-map) nil)
(setf (cdr compilation-minor-mode-map) nil)
(setf (cdr compilation-mode-tool-bar-map) nil)
(setf (cdr compilation-shell-minor-mode-map) nil)

(setf (cdr compilation-mode-map) nil)
(define-key compilation-mode-map (kbd "<C-c> <C-c>") 'kill-compilation)
(define-key compilation-mode-map (kbd "<jd:ret>") 'compile-goto-error)

(provide 'jd:compile-kb.el)
