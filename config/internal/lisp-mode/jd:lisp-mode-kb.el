(setq-default lisp-mode-shared-map (make-sparse-keymap))

(setq-default lisp-mode-map (make-sparse-keymap))
(define-key lisp-mode-map (kbd "<C-b>") 'eval-defun)
(define-key lisp-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form)
(define-key lisp-mode-map (kbd "<f1>") 'eval-last-sexp)

(provide 'jd:lisp-mode-kb.el)
