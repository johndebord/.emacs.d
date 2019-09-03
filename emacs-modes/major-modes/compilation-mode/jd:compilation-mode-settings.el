;;; `ansi-color.el'
(require 'ansi-color)
(defun jd:ansi-color ()
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region
     compilation-filter-start (point))))
(add-hook 'compilation-filter-hook 'jd:ansi-color)

;;; `compile.el'
(setq compilation-scroll-output t)

(provide 'jd:compilation-mode-settings.el)
