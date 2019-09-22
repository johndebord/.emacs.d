(add-hook 'c++-mode-hook
	  '(lambda () (setq compile-command "g++ -Wall -Wextra -std=c++17 -o prog main.cpp && ./prog")))

(provide 'jd:cc-mode-st.el)
