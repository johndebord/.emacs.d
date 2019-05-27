(provide 'jd:compilation-mode-settings.el)

;;;;;;;;;;;;;;;;
;;; `compile.el'
(setq compile-command "clang++ -Wall -Wextra -std=c++17 -o a.out main.cpp; ./a.out")

