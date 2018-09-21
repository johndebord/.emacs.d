(provide 'jd:c++-mode-settings.el)

(setq c-basic-offset 4)
(setq c-default-style "stroustrup")
(setq compile-command "g++ -std=c++11 main.cpp && ./a.out")
(setq indent-tabs-mode nil)

(c-set-offset 'inline-open '0)

(add-hook 'c++-mode-hook (lambda () (abbrev-mode -1)))
