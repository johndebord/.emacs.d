(setq-default swiper-font-lock-exclude (append swiper-font-lock-exclude '(xref--xref-buffer-mode)))
(setq-default xref-after-jump-hook nil)

(defun jd:truncate-xref-references ()
  "Utility function used at one point to organize the output of
`xref-find-references`; narrowing it down to just the file names where the
references are found."
  (interactive)
  (forward-line)
  (set-mark (point))
  (let ((b 0))
    (while (equal b 0)
      (forward-line)
      (if (or (equal (string (char-after (point))) "/")
	      (equal (point) (point-max)))
	  (progn
	    (delete-active-region)
	    (setq b 1))))))

(defun jd:xref-pulse ()
  "Pulse the sexp of which I am cross-referencing."
  (progn
    (forward-sexp)
    (backward-sexp)
    (recenter)
    (xref-pulse-momentarily)))

(defun jd:xref--xref-buffer-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'xref--xref-buffer-mode-hook 'jd:xref--xref-buffer-mode-hook)
(add-hook 'xref-after-jump-hook 'jd:xref-pulse)

(jd:provide-feature jd:xref-st)
