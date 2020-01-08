;; Faces.
(defvar comint-highlight-input)
(defvar comint-highlight-prompt)

;; Customization variables.
(defvar comint-buffer-maximum-size)
(defvar comint-completion-autolist)
(defvar comint-completion-fignore)
(defvar comint-completion-recexact)
(defvar comint-eol-on-send)
(defvar comint-history-isearch)
(defvar comint-input-autoexpand)
(defvar comint-input-ignoredups)
(defvar comint-input-ring-file-name)
(defvar comint-input-ring-size)
(defvar comint-mode-hook)
(defvar comint-move-point-for-matching-input)
(defvar comint-move-point-for-output)
(defvar comint-password-prompt-regexp)
(defvar comint-process-echoes)
(defvar comint-redirect-verbose)
(defvar comint-scroll-show-maximum-output)
(defvar comint-scroll-to-bottom-on-input)
(defvar comint-terminfo-terminal)
(defvar comint-use-prompt-regexp)

(setq-default comint-completion-addsuffix nil)
(setq-default comint-exec-hook nil)
(setq-default comint-prompt-read-only t)

(defun jd:comint-mode-hook ()
  (electric-pair-mode 1)
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'comint-mode-hook 'jd:comint-mode-hook)

(provide 'jd:comint-st)
