;; Faces.
(defvar buffer-menu-buffer)

;; Customization variables.
(defvar Buffer-menu-buffer+size-width)
(defvar Buffer-menu-use-frame-buffer-list)
(defvar Buffer-menu-use-header-line)

(setq-default Buffer-menu-mode-width 30)
(setq-default Buffer-menu-name-width 30)
(setq-default Buffer-menu-size-width 10)

(defun jd:Buffer-menu-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'Buffer-menu-mode-hook 'jd:Buffer-menu-mode-hook)

(provide 'jd:buff-menu-st)
