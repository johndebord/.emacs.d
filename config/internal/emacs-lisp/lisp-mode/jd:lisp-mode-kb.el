(define-key lisp-mode-map (kbd "<C-b>") 'jd:eval)
(define-key lisp-mode-map (kbd "<C-x> b") 'jd:edebug-eval-top-level-form)
(define-key lisp-mode-map (kbd "<jd:C-ret>") 'jd:eval-print-last-sexp)
(define-key lisp-mode-map (kbd "<f1>") 'jd:eval-last-sexp)

(jd:provide-feature jd:lisp-mode-kb)
