;; Customization variables.
(defvar debugger-batch-max-lines)
(defvar debugger-mode-hook)
(defvar debugger-print-function)
(defvar debugger-record-buffer)

(setq-default debugger-bury-or-kill nil)

(defun jd:debugger-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'debugger-mode-hook 'jd:debugger-mode-hook)

(provide 'jd:debug-st)
