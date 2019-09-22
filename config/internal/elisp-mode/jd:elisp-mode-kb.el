(setq-default elisp-byte-code-mode-map (make-sparse-keymap))

(setq-default emacs-lisp-mode-map (make-sparse-keymap))
(define-key emacs-lisp-mode-map (kbd "<f1>") 'eval-last-sexp)
(define-key emacs-lisp-mode-map (kbd "<C-b>") 'eval-defun)
(define-key emacs-lisp-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form)

(setq-default lisp-interaction-mode-map (make-sparse-keymap))
(define-key lisp-interaction-mode-map (kbd "<f1>") 'eval-last-sexp)
(define-key lisp-interaction-mode-map (kbd "<C-b>") 'eval-defun)
(define-key lisp-interaction-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form)

(provide 'jd:elisp-mode-kb.el)
