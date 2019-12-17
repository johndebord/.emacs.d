;; Evaluate the function and pulse highlight the region to visibly show exactly
;; which source code was evaluated.
(defun jd:eval ()
  (interactive)
  (if (region-active-p)
      (progn
        (let ((beg_
               (if (< (mark) (point))
                   (mark)
                 (point)))
              (end_
               (if (< (mark) (point))
                   (point)
                 (mark))))
          (eval-region beg_ end_)
          (deactivate-mark)
          (pulse-momentary-highlight-region beg_ end_ 'highlight)))
    (progn
      (let ((beg_
             (save-excursion
               (end-of-defun)
               (beginning-of-defun)
               (point)))
            (end_
             (save-excursion
               (end-of-defun)
               (point))))
        (pulse-momentary-highlight-region beg_ end_ 'highlight)
        (eval-defun nil)))))

;; Evaluate the sexp and pulse highlight the region to visibly show exactly
;; which source code was evaluated.
(defun jd:eval-last-sexp ()
  (interactive)
  (let ((beg_
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (point)))
        (end_
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (thing-at-point--end-of-sexp)
           (point))))
    (pulse-momentary-highlight-region beg_ end_ 'highlight)
    (eval-last-sexp nil)))

;; Evaluate/print the function and pulse highlight the region to visibly show
;; exactly which source code was evaluated.
(defun jd:eval-print-last-sexp ()
  (interactive)
  (let ((beg_
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (point)))
        (end_
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (thing-at-point--end-of-sexp)
           (point))))
    (pulse-momentary-highlight-region beg_ end_ 'highlight)
    (eval-print-last-sexp nil)))

;; Slurp the sexp into the next sexp.
(defun jd:slurp ()
  (interactive)
  (thing-at-point--end-of-sexp)
  (forward-char)
  (while (looking-at  "[[:space:]]")
    (delete-char 1))
  (kill-sexp)
  (backward-char)
  (jd:self-insert-space)
  (yank))

(defun jd:emacs-lisp-mode-hook ()
  (company-mode 1)
  (eldoc-mode 1)
  (electric-pair-mode 1)
  (font-lock-mode 1)
  (idle-highlight-mode 1)
  (yas-minor-mode 1)
  (set (make-local-variable 'company-backends)
       '((company-capf :separate company-dabbrev-code :separate company-yasnippet)))
  (set (make-local-variable 'electric-pair-text-pairs)
       '((?\` . ?\`))))

(add-hook 'emacs-lisp-mode-hook 'jd:emacs-lisp-mode-hook)

(provide 'jd:elisp-mode-st)
