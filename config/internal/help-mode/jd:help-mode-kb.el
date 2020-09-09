(define-key help-mode-map (kbd "j") 'help-go-back)
(define-key help-mode-map (kbd "l") 'help-go-forward)
(define-key help-mode-map (kbd "<jd:ret>") 'jd:push-button)
(define-key help-mode-map (kbd "<jd:tab>") 'forward-button)
(define-key help-mode-map (kbd "<jd:S-tab>") 'backward-button)

(jd:provide-feature jd:help-mode-kb)
