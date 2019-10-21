(defun jd:eval-defun ()
  (interactive)
  (let ((jd:beg
         (save-excursion
           (beginning-of-defun)
           (point)))
        (jd:end
         (save-excursion
           (end-of-defun)
           (point))))
    (eval-defun nil)
    (pulse-momentary-highlight-region jd:beg jd:end 'highlight)))

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
    (eval-last-sexp nil)
    (pulse-momentary-highlight-region jd:beg jd:end 'highlight)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (eldoc-mode 1)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (company-mode 1)
            (set (make-local-variable 'company-backends)
                 '((company-capf)))))

(provide 'jd:elisp-mode-st.el)
