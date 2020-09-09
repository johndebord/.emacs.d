(setq-default comint-completion-addsuffix nil)
(setq-default comint-exec-hook nil)
(setq-default comint-prompt-read-only t)

(defun jd:comint-mode-hook ()
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'comint-mode-hook 'jd:comint-mode-hook)

(jd:provide-feature jd:comint-st)
