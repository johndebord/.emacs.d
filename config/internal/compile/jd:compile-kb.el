(setf (cdr compilation-mode-map) nil)
(define-key compilation-mode-map (kbd "<C-c> <C-c>") 'kill-compilation)
(define-key compilation-mode-map (kbd "<jd:ret>") 'compile-goto-error)

(provide 'jd:compile-kb.el)

;; compilation-mode-tool-bar-map
;; compilation-minor-mode-map
;; compilation-button-map
;; compilation-menu-map
;; compilation-shell-minor-mode-map
