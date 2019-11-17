(add-hook 'c++-mode-hook
          (lambda ()
            (abbrev-mode -1)))

(add-hook 'c++-mode-hook
          (lambda ()
            (company-mode 1)
            (set (make-local-variable 'company-backends)
                 '((company-etags :separate company-dabbrev-code :separate company-yasnippet)))))

(add-hook 'c++-mode-hook
          (lambda ()
            (idle-highlight-mode 1)))

(add-hook 'c++-mode-hook
          (lambda ()
            (undo-tree-mode 1)))

(add-hook 'c++-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(add-hook 'c++-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat "clang++ -Wall -Wextra -std=c++17 -o prog " buffer-file-name " && ./prog"))))

(provide 'jd:cc-mode-st.el)
