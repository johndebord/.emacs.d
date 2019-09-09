;;; `elisp-mode.el'
(defun jd:lisp-interaction-mode-map ()
  (setf (cdr lisp-interaction-mode-map) nil)
  (define-key lisp-interaction-mode-map (kbd "<f1>") 'eval-last-sexp)
  (define-key lisp-interaction-mode-map (kbd "<C-b>") 'eval-defun)
  (define-key lisp-interaction-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form))
(add-hook 'lisp-interaction-mode-hook 'jd:lisp-interaction-mode-map)

(provide 'jd:lisp-interaction-mode-keybindings.el)
