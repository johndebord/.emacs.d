(setq-default compilation-environment '("TERM=xterm-256color"))
(setq-default compilation-scroll-output 'first-error)

;; By default, `compilation-environment` is `nil`. Thus no text coloring is
;; taken into effect. By setting `compilation-environment` to
;; `TERM=xterm-256color` text coloring is then added to the output; which is
;; then processed by `xterm-color-filter` and its corresponding library.
(defun jd:advice-compilation-filter (function_ proc_ string_)
  (funcall function_ proc_ (xterm-color-filter string_)))

(advice-add 'compilation-filter :around 'jd:advice-compilation-filter)

(provide 'jd:compile-st)
