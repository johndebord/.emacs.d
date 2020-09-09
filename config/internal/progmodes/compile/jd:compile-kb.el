(define-key compilation-mode-map (kbd "<C-M-o>")  'jd:next-error)
(define-key compilation-mode-map (kbd "<C-M-u>")  'jd:previous-error)
(define-key compilation-mode-map (kbd "<C-c> <C-c>") 'kill-compilation)
(define-key compilation-mode-map (kbd "<jd:ret>") 'compile-goto-error)

(jd:provide-feature jd:compile-kb)
