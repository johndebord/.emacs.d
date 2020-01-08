;; Customization variables.
(defvar emacs-lisp-mode-hook)

;; Evaluate the function and pulse highlight the region to visibly show exactly
;; which source code was evaluated.
(defun jd:eval ()
  (interactive)
  (if (region-active-p)
      (progn
        (let ((beg
               (if (< (mark) (point))
                   (mark)
                 (point)))
              (end
               (if (< (mark) (point))
                   (point)
                 (mark))))
          (eval-region beg end)
          (deactivate-mark)
          (pulse-momentary-highlight-region beg end 'highlight)))
    (progn
      (let ((beg
             (save-excursion
               (end-of-defun)
               (beginning-of-defun-raw)
               (point)))
            (end
             (save-excursion
               (end-of-defun)
               (point))))
        (pulse-momentary-highlight-region beg end 'highlight)
        (eval-defun nil)))))

;; Evaluate the sexp and pulse highlight the region to visibly show exactly
;; which source code was evaluated.
(defun jd:eval-last-sexp ()
  (interactive)
  (let ((beg
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (point)))
        (end
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (thing-at-point--end-of-sexp)
           (point))))
    (pulse-momentary-highlight-region beg end 'highlight)
    (eval-last-sexp nil)))

;; Evaluate/print the function and pulse highlight the region to visibly show
;; exactly which source code was evaluated.
(defun jd:eval-print-last-sexp ()
  (interactive)
  (let ((beg
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (point)))
        (end
         (save-excursion
           (thing-at-point--beginning-of-sexp)
           (thing-at-point--end-of-sexp)
           (point))))
    (pulse-momentary-highlight-region beg end 'highlight)
    (eval-print-last-sexp nil)))

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
       '((#x60 . #x60)))) ; '`' '`'

(add-hook 'emacs-lisp-mode-hook 'jd:emacs-lisp-mode-hook)

(provide 'jd:elisp-mode-st)
