(define-key emacs-lisp-mode-map (kbd "<C-b>") 'jd:eval)
(define-key emacs-lisp-mode-map (kbd "<C-x> b") 'jd:edebug-eval-top-level-form)
(define-key emacs-lisp-mode-map (kbd "<jd:C-ret>") 'jd:eval-print-last-sexp)
(define-key emacs-lisp-mode-map (kbd "<f1>") 'jd:eval-last-sexp)

(jd:provide-feature jd:elisp-mode-kb)
