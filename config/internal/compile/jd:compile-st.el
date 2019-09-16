;;; `ansi-color.el'
(require 'ansi-color)
(defun jd:ansi-color ()
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region
     compilation-filter-start (point))))
(add-hook 'compilation-filter-hook 'jd:ansi-color)

(setq compilation-scroll-output t)

(provide 'jd:compile-st.el)
