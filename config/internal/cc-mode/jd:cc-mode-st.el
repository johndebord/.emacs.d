(add-hook 'c++-mode-hook
          (lambda ()
            (abbrev-mode -1)))

(add-hook 'c++-mode-hook
          (lambda ()
            (company-mode 1)
            (set (make-local-variable 'company-backends)
                 '((company-rtags company-clang company-dabbrev company-yasnippet)))))

(add-hook 'c++-mode-hook
          (lambda ()
            (flycheck-mode 1)
            (flycheck-select-checker 'rtags)
            (setq-local flycheck-check-syntax-automatically nil)
            (setq-local flycheck-highlighting-mode nil)))

(add-hook 'c++-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(add-hook 'c++-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat "g++ -Wall -Wextra -std=c++17 -o prog " buffer-file-name " && ./prog"))))

(provide 'jd:cc-mode-st.el)
