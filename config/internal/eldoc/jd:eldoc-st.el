(setq-default eldoc-idle-delay 0)
(global-eldoc-mode -1)
(eldoc-add-command 'delete-backward-char)
(eldoc-add-command 'jd:self-insert-space)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'eldoc-mode)

(provide 'jd:eldoc-st.el)
