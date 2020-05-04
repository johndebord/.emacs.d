;; Customization variables.
(defvar edebug-all-defs)
(defvar edebug-all-forms)
(defvar edebug-continue-kbd-macro)
(defvar edebug-eval-macro-args)
(defvar edebug-global-break-condition)
(defvar edebug-initial-mode)
(defvar edebug-max-depth)
(defvar edebug-on-error)
(defvar edebug-on-quit)
(defvar edebug-print-circle)
(defvar edebug-print-length)
(defvar edebug-print-level)
(defvar edebug-save-displayed-buffer-points)
(defvar edebug-setup-hook)
(defvar edebug-sit-for-seconds)
(defvar edebug-sit-on-break)
(defvar edebug-test-coverage)
(defvar edebug-trace)
(defvar edebug-unwrap-results)

(setq-default edebug-save-windows nil)

;; Instrument the function for debugging and pulse highlight the region to
;; visibly show exactly which source code was instrumented.
(defun jd:edebug-eval-top-level-form ()
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
