(setq-default compilation-button-map (make-sparse-keymap))
(setq-default compilation-menu-map (make-sparse-keymap))
(setq-default compilation-minor-mode-map (make-sparse-keymap))
(setq-default compilation-mode-tool-bar-map (make-sparse-keymap))
(setq-default compilation-shell-minor-mode-map (make-sparse-keymap))

(setq-default compilation-mode-map (make-sparse-keymap))
(define-key compilation-mode-map (kbd "<C-c> <C-c>") 'kill-compilation)
(define-key compilation-mode-map (kbd "<jd:ret>") 'compile-goto-error)

(provide 'jd:compile-kb.el)
