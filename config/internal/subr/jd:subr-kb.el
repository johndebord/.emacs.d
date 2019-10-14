(setf (cdr read-passwd-map) nil)
(define-key read-passwd-map (kbd "<C-g>") 'abort-recursive-edit)
(define-key read-passwd-map (kbd "<jd:ret>") 'exit-minibuffer)

(provide 'jd:subr-kb.el)
