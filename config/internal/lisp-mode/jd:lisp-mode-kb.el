(setf (cdr lisp-mode-map) nil)
(define-key lisp-mode-map (kbd "<C-b>") 'eval-defun)
(define-key lisp-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form)
(define-key lisp-mode-map (kbd "<f1>") 'eval-last-sexp)

(provide 'jd:lisp-mode-kb.el)

;; lisp-mode-shared-map
