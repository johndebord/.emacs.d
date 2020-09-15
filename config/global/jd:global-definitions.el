(defun jd:indent-region ()
  "Indents the entire function the cursor is currently in."
  (interactive)
  (save-excursion
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
        (indent-region beg end)
        (pulse-momentary-highlight-region beg end 'highlight)))))

(defun jd:copy-and-comment-out ()
  "Copy the given region as it is and comment it out at the same time."
  (interactive)
  (if (not (region-active-p))
      (error "Region is not active.")
    (let ((beg (mark))
          (end (point)))
      (copy-region-as-kill beg end)
      (comment-region beg end))))

(defun jd:copy-line-and-goto-beg ()
  "Utility function to quickly copy a line and move to the beginning of the
line."
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (back-to-indentation)
  (message "Line copied"))

(defun jd:copy-line-and-goto-end ()
  "Utility function to quickly copy a line and move to the end of the line."
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (end-of-line)
  (message "Line copied"))

(defun jd:transpose-char-left ()
  "Move the cursor to the right during transposition."
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars -1))
  (backward-char))

(defun jd:transpose-char-right ()
  "Move the cursor to the left during transposition."
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars 1))
  (forward-char))

(defun jd:transpose-line-down ()
  "Transpose line down in an intuitive way."
  (interactive)
  (let ((current-column (current-column)))
    (forward-line 1)
    (transpose-lines 1)
    (forward-line -1)
    (move-to-column current-column)))

(defun jd:transpose-line-up ()
  "Transpose line up in an intuitive way."
  (interactive)
  (if (not (equal (line-number-at-pos) 1))
      (let ((current-column (current-column)))
        (progn
          (forward-line 1)
          (transpose-lines -1)
          (forward-line -1)
          (move-to-column current-column)))))

(defun jd:self-insert-space ()
  "Custom insert space character function."
  (interactive)
  (if (eq major-mode 'term-mode)
      (term-send-raw-string (string #x20))
    (insert #x20))
  (jd:company-select-nil)
  (jd:recently-finished-completion-nil))

(defun jd:delete-line ()
  "Custom delete line function that maintains the current column that the cursor
is on."
  (interactive)
  (beginning-of-line)
  (delete-region (point) (progn (end-of-line) (point)))
  (delete-char -1)
  (forward-line 1))

(defun jd:delete-word-backward ()
  "Helper function to delete a word backwards."
  (interactive)
  (let ((start (point))
        (end (save-excursion
               (backward-word)
               (point))))
    (delete-region start end)))

(defun jd:kill-buffer ()
  "Helper function to kill a buffer."
  (interactive)
  (kill-buffer)
  (exit-minibuffer))

(defun jd:search-site-lisp-sources ()
  "Search all site-lisp files for the given string."
  (interactive)
  (grep-compute-defaults)
  (let ((str (read-string "Search For: " nil)))
    (rgrep str "*.el" (concat source-directory "lisp") nil)))

(defun jd:search-config-sources ()
  "Search all personal config files for the given string."
  (interactive)
  (grep-compute-defaults)
  (let ((str (read-string "Search For: " nil)))
    (rgrep str "*.el" jd:path-prefix nil)))

(defun jd:remove-text-properties ()
  "Remove selected text properties of the given region."
  (interactive)
  (remove-text-properties (mark) (point) '(face nil)))

(defun jd:erase-buffer ()
  "Clear the current buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer))
  (jd:force-linum-update-columns-hack))

(jd:provide-feature jd:global-definitions)
