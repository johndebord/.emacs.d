;; Customization variables.
(defvar fancy-splash-image)
(defvar inhibit-default-init)
(defvar inhibit-startup-buffer-menu)
(defvar inhibit-startup-echo-area-message)
(defvar inhibit-startup-screen)
(defvar mail-host-address)
(defvar site-run-file)
(defvar tutorial-directory)
(defvar user-mail-address)

(setq-default auto-save-list-file-prefix
              (concat jd:path-prefix "autosaves/.saves-"))
(setq-default initial-buffer-choice t)
(setq-default initial-major-mode 'emacs-lisp-mode)
(setq-default initial-scratch-message "")

(provide 'jd:startup-st)
