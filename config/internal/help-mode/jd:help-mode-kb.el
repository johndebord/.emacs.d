(setf (cdr help-mode-menu) nil)

(setf (cdr help-mode-map) nil)
(define-key help-mode-map (kbd "i") 'jd:help-mode-scroll-up)
(define-key help-mode-map (kbd "k") 'jd:help-mode-scroll-down)
(define-key help-mode-map (kbd "j") 'help-go-back)
(define-key help-mode-map (kbd "l") 'help-go-forward)
(define-key help-mode-map (kbd "q") 'quit-window)
(define-key help-mode-map (kbd "<jd:ret>") 'push-button)
(define-key help-mode-map (kbd "<mouse-1>") 'push-button)

(provide 'jd:help-mode-kb.el)
