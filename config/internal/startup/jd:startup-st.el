(setq-default initial-buffer-choice 'eshell)
(setq-default initial-major-mode 'emacs-lisp-mode)
(setq-default initial-scratch-message "")

(advice-add 'display-startup-echo-area-message :override (lambda () (message "")))

(provide 'jd:startup-st)
