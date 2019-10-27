(setq-default xref-after-jump-hook nil)

;; (defun xref--insert-propertized (props &rest strings))

;; (advice-add 'xref--insert-propertized :override (lambda (props &rest strings)))

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

(provide 'jd:xref-st.el)
