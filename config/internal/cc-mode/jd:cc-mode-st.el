(add-hook 'c++-mode-hook
          (lambda ()
            (abbrev-mode -1)))

(add-hook 'c++-mode-hook
          (lambda ()
            (company-mode 1)
            (set (make-local-variable 'company-backends)
                 '((company-etags)))))

;; (company-bbdb company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
;;               (company-dabbrev-code company-gtags company-etags company-keywords)
;;               company-oddmuse company-dabbrev)

(add-hook 'c++-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(add-hook 'c++-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat "clang++ -Wall -Wextra -std=c++17 -o prog " buffer-file-name " && ./prog"))))

(provide 'jd:cc-mode-st.el)
