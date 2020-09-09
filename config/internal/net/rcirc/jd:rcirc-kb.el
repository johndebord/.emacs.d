(define-key rcirc-mode-map (kbd "<M-u>") 'beginning-of-line)
(define-key rcirc-mode-map (kbd "<C-M-i>") 'jd:rcirc-insert-prev-input)
(define-key rcirc-mode-map (kbd "<C-M-k>") 'jd:rcirc-insert-next-input)
(define-key rcirc-mode-map (kbd "<jd:ret>") 'rcirc-send-input)
(define-key rcirc-mode-map (kbd "<jd:tab>") 'rcirc-complete)

(jd:provide-feature jd:rcirc-kb)
