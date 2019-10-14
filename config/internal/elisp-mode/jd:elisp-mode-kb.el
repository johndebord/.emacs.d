(setf (cdr emacs-lisp-mode-map) nil)
(define-key emacs-lisp-mode-map (kbd "<C-b>") 'eval-defun)
(define-key emacs-lisp-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form)
(define-key emacs-lisp-mode-map (kbd "<f1>") 'eval-last-sexp)

(provide 'jd:elisp-mode-kb.el)

;; elisp-byte-code-mode-map
;; lisp-interaction-mode-map
