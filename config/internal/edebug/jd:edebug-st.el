(setq-default edebug-save-windows nil)

(defun jd:edebug-eval-top-level-form ()
  (interactive)
  (let ((jd:beg
         (save-excursion
           (end-of-defun)
           (beginning-of-defun)
           (point)))
        (jd:end
         (save-excursion
           (end-of-defun)
           (point))))
    (edebug-eval-top-level-form)
    (pulse-momentary-highlight-region jd:beg jd:end 'highlight)))

(provide 'jd:edebug-st)
