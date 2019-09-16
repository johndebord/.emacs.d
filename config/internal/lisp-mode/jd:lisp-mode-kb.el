(defun jd:lisp-mode-map ()
  (setf (cdr lisp-mode-map) nil)
  (define-key lisp-mode-map (kbd "<f1>") 'eval-last-sexp)
  (define-key lisp-mode-map (kbd "<C-b>") 'eval-defun)
  (define-key lisp-mode-map (kbd "<C-x> b") 'edebug-eval-top-level-form))
(add-hook 'lisp-mode-hook 'jd:lisp-mode-map)

(defun jd:lisp-mode-shared-map ()
 (setf (cdr lisp-mode-shared-map) nil))
(add-hook 'lisp-mode-shared-mode-hook 'jd:lisp-mode-shared-map)

(provide 'jd:lisp-mode-kb.el)
