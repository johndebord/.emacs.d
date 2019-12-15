(defun jd:eval ()
  (interactive)
  (if (region-active-p)
      (progn
        (let ((jd:beg
               (if (< (mark) (point))
                   (mark)
                 (point)))
              (jd:end
               (if (< (mark) (point))
                   (point)
                 (mark))))
          (eval-region jd:beg jd:end)
          (deactivate-mark)
          (pulse-momentary-highlight-region jd:beg jd:end 'highlight)))
    (progn
      (let ((jd:beg
             (save-excursion
               (end-of-defun)
               (beginning-of-defun)
               (point)))
            (jd:end
             (save-excursion
               (end-of-defun)
               (point))))
        (pulse-momentary-highlight-region jd:beg jd:end 'highlight)
        (eval-defun nil)))))

(defun jd:eval-last-sexp ()
  (interactive)
  (let ((jd:beg
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (point)))
        (jd:end
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (thing-at-point--end-of-sexp)
           (point))))
    (pulse-momentary-highlight-region jd:beg jd:end 'highlight)
    (eval-last-sexp nil)))

(defun jd:eval-print-last-sexp ()
  (interactive)
  (let ((jd:beg
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (point)))
        (jd:end
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (thing-at-point--end-of-sexp)
           (point))))
    (pulse-momentary-highlight-region jd:beg jd:end 'highlight)
    (eval-print-last-sexp nil)))

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

(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (setq-local electric-pair-text-pairs '((?\` . ?\`)))
             (abbrev-mode -1)
             (company-mode 1)
             (set (make-local-variable 'company-backends)
                  '((company-capf :separate company-dabbrev-code :separate company-yasnippet)))
             (eldoc-mode 1)
             (font-lock-mode t)
             (yas-minor-mode t)))

(provide 'jd:elisp-mode-st)
