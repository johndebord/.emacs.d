(add-hook 'c++-mode-hook '(lambda () (setq compile-command "g++ -Wall -Wextra -std=c++17 -o prog main.cpp && ./prog")))
(add-hook 'c++-mode-hook '(lambda () (yas-minor-mode t)))

(provide 'jd:cc-mode-st.el)
