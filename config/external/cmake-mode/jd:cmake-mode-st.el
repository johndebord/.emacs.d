;; Customization variables
(defvar cmake-mode-cmake-executable)

(setq-default cmake-tab-width 4)

(defun jd:cmake-mode-hook ()
  (electric-pair-mode 1)
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'cmake-mode-hook 'jd:cmake-mode-hook)

(provide 'jd:cmake-mode-st)
