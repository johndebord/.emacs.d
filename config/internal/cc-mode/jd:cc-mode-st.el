(add-hook 'c++-mode-hook
          (lambda ()
            (abbrev-mode -1)))

(add-hook 'c++-mode-hook
          (lambda ()
            (company-mode 1)))

(add-hook 'c++-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 "g++ -Wall -Wextra -std=c++17 -o prog main.cpp && ./prog")))

(add-hook 'c++-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(provide 'jd:cc-mode-st.el)
