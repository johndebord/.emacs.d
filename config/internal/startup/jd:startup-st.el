(setq-default auto-save-list-file-prefix (concat jd:path-prefix "autosaves/.saves-"))
(setq-default initial-buffer-choice t)
(setq-default initial-major-mode 'emacs-lisp-mode)
(setq-default initial-scratch-message "")

(jd:provide-feature jd:startup-st)
