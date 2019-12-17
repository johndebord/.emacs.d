;; Do not save the initial state that all windows are in when starting a
;; debugging session; this is because I might land in some place interesting
;; whilst debugging.
(setq-default edebug-save-windows nil)

;; Instrument the function for debugging and pulse highlight the region to
;; visibly show exactly which source code was instrumented.
(defun jd:edebug-eval-top-level-form ()
  (interactive)
  (let ((beg_
         (save-excursion
           (end-of-defun)
           (beginning-of-defun)
           (point)))
        (end_
         (save-excursion
           (end-of-defun)
           (point))))
    (edebug-eval-top-level-form)
    (pulse-momentary-highlight-region beg_ end_ 'highlight)))

(provide 'jd:edebug-st)
