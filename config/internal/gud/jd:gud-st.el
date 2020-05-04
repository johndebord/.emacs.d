;; Customization variables.
(defvar gud-chdir-before-run)
(defvar gud-dbx-directories)
(defvar gud-guiler-command-name)
(defvar gud-jdb-command-name)
(defvar gud-jdb-use-classpath)
(defvar gud-key-prefix)
(defvar gud-pdb-command-name)
(defvar gud-perldb-command-name)
(defvar gud-tooltip-display)
(defvar gud-tooltip-echo-area)
(defvar gud-tooltip-modes)
(defvar gud-xdb-directories)

(setq-default gud-gud-gdb-command-name "gdb --quiet --fullname")

;; Decide whether or not the next input should be displayed, depending on the
;; context of the cursor in the buffer.
(defun jd:comint-next-input ()
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (comint-next-input 1)
    (progn
      (scroll-down-line -1)
      (forward-line 1))))

;; Decide whether or not the previous input should be displayed, depending on
;; the context of the cursor in the buffer.
(defun jd:comint-previous-input ()
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (comint-previous-input 1)
    (progn
      (scroll-down-line 1)
      (forward-line -1))))

;; Clear the whole state of the `gud` buffer, but at the same time, preserve the
;; current text on the prompt line; this is to prevent the annoyance of having
;; to re-type whatever was on the prompt line after the clearing of the buffer.
(defun jd:gud-clear-buffer ()
  (interactive)
  (unless (equal (line-number-at-pos) 1)
    (let ((minimum-viable-eshell-command-column-number 6)
          (saved-column-number nil))
      (if (and (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
               (>= (current-column) minimum-viable-eshell-command-column-number))
          (setq saved-column-number (current-column)))
      (let ((inhibit-read-only t)
            (start (goto-char (point-min)))
            (end
             (progn
               (goto-char (point-max))
               (forward-line -1)
               (beginning-of-line)
               (forward-line 1)
               (backward-char 1)
               (point))))
        (delete-region start end)
        (forward-line)
        (backward-delete-char 1))
      (goto-char (point-max))
      (if (not (equal saved-column-number nil))
          (move-to-column saved-column-number)))))

(defun jd:gud-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'gud-mode-hook 'jd:gud-mode-hook)

(jd:provide-feature jd:gud-st)
