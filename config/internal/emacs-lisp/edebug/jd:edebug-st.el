(setq-default edebug-save-windows nil)

(defun jd:edebug-eval-top-level-form ()
  "Instrument the function for debugging and pulse highlight the region to
visibly show exactly which source code was instrumented."
  (interactive)
  (let ((beg
         (save-excursion
           (end-of-defun)
           (beginning-of-defun-raw)
           (point)))
        (end
         (save-excursion
           (end-of-defun)
           (point))))
    (edebug-eval-top-level-form)
    (pulse-momentary-highlight-region beg end 'highlight)))

(jd:provide-feature jd:edebug-st)
