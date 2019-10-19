(setq-default compilation-environment '("TERM=xterm-256color"))
(setq-default compilation-scroll-output t)

(defun jd:advice-compilation-filter (f proc string)
  (funcall f proc (xterm-color-filter string)))

(advice-add 'compilation-filter :around 'jd:advice-compilation-filter)

(provide 'jd:compile-st.el)
