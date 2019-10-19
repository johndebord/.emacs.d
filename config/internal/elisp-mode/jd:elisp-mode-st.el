(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (eldoc-mode 1)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (company-mode 1)
            (set (make-local-variable 'company-backends)
                 '((company-capf)))))

(provide 'jd:elisp-mode-st.el)
