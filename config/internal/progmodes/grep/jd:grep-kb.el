(define-key grep-mode-map (kbd "l") 'compile-goto-error)
(define-key grep-mode-map (kbd "q") 'quit-window)
(define-key grep-mode-map (kbd "<C-c> <C-c>") 'kill-compilation)
(define-key grep-mode-map (kbd "<jd:ret>") 'compile-goto-error)

(jd:provide-feature jd:grep-kb)
