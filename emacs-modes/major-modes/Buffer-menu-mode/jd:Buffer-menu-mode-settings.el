(provide 'jd:Buffer-menu-mode-settings.el)

;;; Function patch
(defun buffer-menu (&optional arg)
  (interactive "P")
  (switch-to-buffer (list-buffers-noselect arg)))

;;; Function patch
(defun buffer-menu-other-window (&optional arg)
  (interactive "P")
  (switch-to-buffer-other-window (list-buffers-noselect arg)))
