(setf (cdr elisp-byte-code-mode-map) nil)

(setf (cdr emacs-lisp-mode-map) nil)
(define-key emacs-lisp-mode-map (kbd "<f1>") 'eval-last-sexp)
(define-key emacs-lisp-mode-map (kbd "<C-b>") 'eval-defun)
(define-key emacs-lisp-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form)

(setf (cdr lisp-interaction-mode-map) nil)
(define-key lisp-interaction-mode-map (kbd "<f1>") 'eval-last-sexp)
(define-key lisp-interaction-mode-map (kbd "<C-b>") 'eval-defun)
(define-key lisp-interaction-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form)

(provide 'jd:elisp-mode-kb.el)
