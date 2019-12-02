(setq-default xref-after-jump-hook nil)

(defun jd:xref--collect-matches-1 (regexp file line line-beg line-end syntax-needed)
  (let (matches)
    (when syntax-needed
      (syntax-propertize line-end))
    (while (and
            (or (null matches)
                (> (point) line-beg))
            (re-search-forward regexp line-end t))
      (let* ((beg-column (- (match-beginning 0) line-beg))
             (end-column (- (match-end 0) line-beg))
             (loc (xref-make-file-location file line beg-column))
             (summary (buffer-substring-no-properties line-beg line-end)))
        (add-face-text-property beg-column end-column 'xref-match
                                t summary)
        (push (xref-make-match summary loc (- end-column beg-column))
              matches)))
    (nreverse matches)))

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

(advice-add 'xref--collect-matches-1 :override 'jd:xref--collect-matches-1)

(provide 'jd:xref-st)
