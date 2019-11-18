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
        (eval-defun nil)
        (pulse-momentary-highlight-region jd:beg jd:end 'highlight)))))

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
          (lambda ()
            (abbrev-mode -1)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (company-mode 1)
            (set (make-local-variable 'company-backends)
                 '((company-capf :separate company-dabbrev-code :separate company-yasnippet)))))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (eldoc-mode 1)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(provide 'jd:elisp-mode-st.el)
