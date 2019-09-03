;;; `eldoc.el.el'
(global-eldoc-mode -1)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'eldoc-mode)
(setq eldoc-idle-delay 0)


(provide 'jd:eldoc-mode-settings.el)
