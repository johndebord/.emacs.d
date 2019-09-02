;;; `lisp-mode-map' --- `lisp-mode.el'
(defun jd:lisp-mode-map ()
 (setf (cdr lisp-mode-map) nil)
 (define-key lisp-mode-map (kbd "<C-b>") 'eval-last-sexp)
 (define-key lisp-mode-map (kbd "<C-M-u>") 'backward-sexp)
 (define-key lisp-mode-map (kbd "<C-M-o>") 'forward-sexp))
(add-hook 'lisp-mode-mode-hook 'jd:lisp-mode-map)

`lisp-mode-shared-map' --- `lisp-mode.el'
(defun jd:lisp-mode-shared-map ()
 (setf (cdr lisp-mode-shared-map) nil))
(add-hook 'lisp-mode-shared-mode-hook 'jd:lisp-mode-shared-map)

(provide 'jd:lisp-mode-keybindings.el)
