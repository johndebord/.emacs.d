(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'eldoc-mode)
(add-hook 'lisp-interaction-mode-hook '(lambda () (yas-minor-mode t)))

(provide 'jd:elisp-mode-st.el)
