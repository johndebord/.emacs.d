;;; `.el'

(defun jd:lisp-interaction-mode-enable-yasnippet-mode ()
  (yas-minor-mode t))
(add-hook 'lisp-interaction-mode-hook 'jd:lisp-interaction-mode-enable-yasnippet-mode)
(provide 'jd:lisp-interaction-mode-settings.el)
