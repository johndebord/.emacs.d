;; Customization variables.
(defvar xref-after-return-hook)
(defvar xref-marker-ring-length)
(defvar xref-prompt-for-identifier)

(setq-default swiper-font-lock-exclude
              (append swiper-font-lock-exclude '(xref--xref-buffer-mode)))
(setq-default xref-after-jump-hook nil)

;; Utility function used at one point to organize the output of
;; `xref-find-references`; narrowing it down to just the file names where the
;; references are found.
(defun jd:truncate-xref-references ()
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

;; Find xref definitions in either the `company` popup or in a normal fashion.
(defun jd:xref-find-definitions ()
  (interactive)
  (if (and (memq 'company-etags (car company-backends))
           (equal tags-file-name nil))
      (message "`TAGS` file has not been set.")
    (if (company--active-p)
        (progn
          (xref-find-definitions (nth company-selection company-candidates)))
      (progn
        (xref-find-definitions (symbol-name (symbol-at-point)))))))

;; Find xref references in either the `company` popup or in a normal fashion.
(defun jd:xref-find-references ()
  (interactive)
  (if (and (memq 'company-etags (car company-backends))
           (equal tags-file-name nil))
      (message "`TAGS` file has not been set.")
    (if (company--active-p)
        (progn
          (xref-find-references (nth company-selection company-candidates)))
      (progn
        (xref-find-references (symbol-name (symbol-at-point)))))))

;; Pulse the sexp of which I am cross-referencing.
(defun jd:xref-pulse ()
  (progn
    (forward-sexp)
    (backward-sexp)
    (recenter)
    (xref-pulse-momentarily)))

(defun jd:xref--xref-buffer-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'xref--xref-buffer-mode-hook 'jd:xref--xref-buffer-mode-hook)
(add-hook 'xref-after-jump-hook 'jd:xref-pulse)

(provide 'jd:xref-st)
