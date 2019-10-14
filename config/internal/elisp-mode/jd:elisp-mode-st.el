(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (company-mode 1)))

(add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-capf company-dabbrev company-yasnippet)))))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(provide 'jd:elisp-mode-st.el)
