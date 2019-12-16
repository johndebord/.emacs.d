(add-hook 'c++-mode-hook
          (lambda ()
            (company-mode 1)
            (cua-mode 1)
            (electric-pair-mode 1)
            (font-lock-mode 1)
            (idle-highlight-mode 1)
            (yas-minor-mode 1)
            (set (make-local-variable 'company-backends)
                 '((company-etags :separate company-dabbrev-code :separate company-yasnippet)))
            (set (make-local-variable 'compile-command)
                 (concat "clang++ -Wall -Wextra -std=c++17 -o prog " buffer-file-name " && ./prog"))))

(provide 'jd:cc-mode-st)
