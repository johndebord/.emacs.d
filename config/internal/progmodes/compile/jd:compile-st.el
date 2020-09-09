(setq-default compilation-scroll-output t)
(setq-default compilation-skip-threshold 0)
(setq-default compile-command (purecopy "make"))

(defun jd:compilation-mode-hook ()
  (idle-highlight-mode 1)
  (toggle-truncate-lines))

(add-hook 'compilation-mode-hook 'jd:compilation-mode-hook)

(jd:provide-feature jd:compile-st)
