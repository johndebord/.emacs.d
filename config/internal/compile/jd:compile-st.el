;; Faces.
(defvar compilation-column-number)
(defvar compilation-error)
(defvar compilation-info)
(defvar compilation-line-number)
(defvar compilation-mode-line-exit)
(defvar compilation-mode-line-fail)
(defvar compilation-mode-line-run)
(defvar compilation-warning)

;; Customization variables.
(defvar compilation-always-kill)
(defvar compilation-ask-about-save)
(defvar compilation-auto-jump-to-first-error)
(defvar compilation-context-lines)
(defvar compilation-disable-input)
(defvar compilation-environment)
(defvar compilation-error-regexp-alist)
(defvar compilation-error-screen-columns)
(defvar compilation-message-face)
(defvar compilation-mode-hook)
(defvar compilation-read-command)
(defvar compilation-save-buffers-predicate)
(defvar compilation-search-path)
(defvar compilation-skip-visited)
(defvar compilation-start-hook)
(defvar compilation-window-height)

(setq-default compilation-scroll-output t)
(setq-default compilation-skip-threshold 0)
(setq-default compile-command
              (purecopy "make"))

(defun jd:compilation-ansi-colors-filter ()
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region
     compilation-filter-start (point))))

(defun jd:compilation-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1)
  (toggle-truncate-lines))

(add-hook 'compilation-filter-hook 'jd:compilation-ansi-colors-filter)
(add-hook 'compilation-mode-hook 'jd:compilation-mode-hook)

(jd:provide-feature jd:compile-st)
