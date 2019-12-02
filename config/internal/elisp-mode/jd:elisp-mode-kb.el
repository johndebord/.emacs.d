(setf (cdr emacs-lisp-mode-map) nil)
(define-key emacs-lisp-mode-map (kbd "<C-b>") 'jd:eval)
(define-key emacs-lisp-mode-map (kbd "<C-x> b") 'jd:edebug-eval-top-level-form)
(define-key emacs-lisp-mode-map (kbd "<M-y>") 'jd:slurp)
(define-key emacs-lisp-mode-map (kbd "<jd:C-ret>") 'jd:eval-print-last-sexp)
(define-key emacs-lisp-mode-map (kbd "<f1>") 'jd:eval-last-sexp)

(provide 'jd:elisp-mode-kb)

;; elisp-byte-code-mode-map
;; lisp-interaction-mode-map
