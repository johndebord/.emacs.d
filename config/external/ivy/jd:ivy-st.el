(setq-default ivy-count-format "%d/%d ")
(setq-default ivy-extra-directories nil)
(setq-default ivy-format-function 'ivy-format-function-line)

(defun jd:goto-dir-or-file ()
  (interactive)
  (ivy-alt-done))

(provide 'jd:ivy-st.el)
