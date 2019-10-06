(add-hook 'lisp-mode-hook 'eldoc-mode)

(add-hook 'lisp-mode-hook
          (lambda ()
            (company-mode 1)))

(add-hook 'lisp-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(provide 'jd:lisp-mode-st.el)
