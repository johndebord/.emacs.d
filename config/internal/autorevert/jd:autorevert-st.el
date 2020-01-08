;; Customization variables.
(defvar auto-revert-check-vc-info)
(defvar auto-revert-interval)
(defvar auto-revert-load-hook)
(defvar auto-revert-mode-hook)
(defvar auto-revert-mode-text)
(defvar auto-revert-remote-files)
(defvar auto-revert-stop-on-user-input)
(defvar auto-revert-tail-mode-text)
(defvar auto-revert-use-notify)
(defvar auto-revert-verbose)
(defvar global-auto-revert-ignore-modes)
(defvar global-auto-revert-mode-hook)
(defvar global-auto-revert-mode-text)
(defvar global-auto-revert-non-file-buffers)

(setq-default auto-revert-notify-exclude-dir-regexp nil)

(global-auto-revert-mode 1)

(provide 'jd:autorevert-st)
