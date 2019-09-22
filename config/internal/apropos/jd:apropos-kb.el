(setq-default apropos-mode-map (make-sparse-keymap))
(define-key apropos-mode-map (kbd "<jd:ret>") 'push-button)
(define-key apropos-mode-map (kbd "<jd:tab>") 'forward-button)
(define-key apropos-mode-map (kbd "<jd:S-tab>") 'backward-button)
(define-key apropos-mode-map (kbd "q") 'quit-window)

(provide 'jd:apropos-kb.el)
