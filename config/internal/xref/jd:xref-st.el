(setq-default xref-after-jump-hook nil)

(defun jd:xref--insert-propertized (props &rest strings)
  (let ((start (point)))
    (apply #'insert strings)
    (add-text-properties start (point) props)
    (if (plist-member (text-properties-at start) 'xref-item)
        (remove-text-properties start (point) '(help-echo nil face nil)))))
  
(defun jd:xref-next-line ()
  (interactive)
  (beginning-of-line)
  (forward-line 1))

(defun jd:xref-previous-line ()
  (interactive)
  (beginning-of-line)
  (forward-line -1))

(add-hook 'xref-after-jump-hook
          (lambda ()
            (progn
              (forward-sexp)
              (backward-sexp)
              (recenter)
              (xref-pulse-momentarily))))

(advice-add 'xref--insert-propertized :override 'jd:xref--insert-propertized)

(provide 'jd:xref-st.el)
