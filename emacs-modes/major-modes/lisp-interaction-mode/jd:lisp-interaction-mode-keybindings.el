(provide 'jd:lisp-interaction-mode-keybindings.el)
;;;;;;;;;;;;;;;;;;;
;;; `elisp-mode.el'
(defun jd:lisp-interaction-mode-map ()
  (setf (cdr lisp-interaction-mode-map) nil)
  (define-key lisp-interaction-mode-map (kbd "<C-b>") 'eval-last-sexp))
(add-hook 'lisp-interaction-mode-hook 'jd:lisp-interaction-mode-map)
