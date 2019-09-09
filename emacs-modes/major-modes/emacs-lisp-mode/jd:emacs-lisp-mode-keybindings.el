;;; `emacs-lisp-mode-map' --- `elisp-mode.el'
(defun jd:emacs-lisp-mode-map ()
  (setf (cdr emacs-lisp-mode-map) nil)
  (define-key emacs-lisp-mode-map (kbd "<f1>") 'eval-last-sexp)
  (define-key emacs-lisp-mode-map (kbd "<C-b>") 'eval-defun)
  (define-key emacs-lisp-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form))
(add-hook 'emacs-lisp-mode-hook 'jd:emacs-lisp-mode-map)

(provide 'jd:emacs-lisp-mode-keybindings.el)
