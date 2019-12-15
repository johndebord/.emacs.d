(setq-default cmake-tab-width 4)

(add-hook 'cmake-mode-hook
          (lambda () (font-lock-mode t)))

(provide 'jd:cmake-mode-st)
