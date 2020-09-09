(define-key read-passwd-map (kbd "<C-g>") 'abort-recursive-edit)
(define-key read-passwd-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-passwd-map (kbd "<C-M-k>") 'next-history-element)
(define-key read-passwd-map (kbd "<jd:ret>") 'exit-minibuffer)

(jd:provide-feature jd:subr-kb)
