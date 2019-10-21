(setf (cdr lisp-mode-map) nil)
(define-key lisp-mode-map (kbd "<C-b>") 'jd:eval-defun)
(define-key lisp-mode-map (kbd "<C-x> b") 'jd:edebug-eval-top-level-form)
(define-key lisp-mode-map (kbd "<f1>") 'jd:eval-last-sexp)

(provide 'jd:lisp-mode-kb.el)

;; lisp-mode-shared-map
