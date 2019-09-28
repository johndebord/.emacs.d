(setf (cdr rcirc-mode-map) nil)
(define-key rcirc-mode-map (kbd "<C-M-i>") 'rcirc-insert-prev-input)
(define-key rcirc-mode-map (kbd "<C-M-k>") 'rcirc-insert-next-input)
(define-key rcirc-mode-map (kbd "<jd:ret>") 'rcirc-send-input)
(define-key rcirc-mode-map (kbd "<jd:tab>") 'rcirc-complete)

(provide 'jd:rcirc-kb.el)

;; rcirc-track-minor-mode-map
;; rcirc-multiline-minor-mode-map
