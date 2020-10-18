(defun jd:eshell-beginning-of-line-or-prompt ()
  "Determines whether or not it is appropriate to go to the true beginning of
the line, or just to the end of the current prompt based on the context of
cursor in the buffer."
  (interactive "^")
  (if (or
       (not (equal (line-number-at-pos) (save-restriction
                                          (line-number-at-pos (point-max)))))
       (equal (get-text-property (line-beginning-position) 'read-only) nil)
       (and (equal (get-text-property (line-beginning-position) 'read-only) t)
            (equal (char-before) #x24)))
      (beginning-of-line)
    (eshell-bol)))

;; TODO:
;; [ ] Edge-case: Experiment with having multiple `eshell-mode` buffers open at
;; the same time (all being the same `eshell-mode` instance) and observe the
;; side-effects when using this function.
(defun jd:eshell-clear-buffer ()
  "Clear the whole state of the `eshell-mode` buffer, but at the same time,
preserve the current text on the prompt line; this is to prevent the annoyance
of having to re-type whatever was on the prompt line after the clearing of the
buffer."
  (interactive)
  (unless (equal (line-number-at-pos) 1)
    (let ((minimum-viable-eshell-command-column-number 4)
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
          (move-to-column saved-column-number)))
    (jd:force-linum-update-columns-hack)))

(defun jd:counsel-esh-history ()
  "Ensures that `company` will discontinue so that this command may ensue."
  (interactive)
  (company-abort)
  (counsel-esh-history))

(defun jd:eshell-next-input ()
  "Decide whether or not the next input should be displayed, depending on the
context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (progn
        (end-of-line)
        (eshell-next-input 1))
    (progn
      (scroll-down-line -1)
      (line-move 1))))

(defun jd:eshell-previous-input ()
  "Decide whether or not the previous input should be displayed, depending on
the context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (progn
        (end-of-line)
        (eshell-previous-input 1))
    (progn
      (scroll-down-line 1)
      (line-move -1))))

(defun jd:eshell-mode-hook ()
  (company-mode 1)
  (electric-pair-mode 1)
  (idle-highlight-mode 1)
  ;; Hack to get around the wonky way the `eshell-mode` keybindings are
  ;; implemented (this is one of the cleanest ways I could come up with).
  (let ((message-log-max nil))
    (with-temp-message (or (current-message) "")
      (jd:load-feature jd:esh-mode-kb jd:internal-prefix "/eshell/esh-mode/")))
  (set (make-local-variable 'company-backends)
       '((company-capf)))
  (set (make-local-variable 'electric-pair-pairs)
       (append electric-pair-pairs
               '((#x60 . #x60)     ; '`' '`'
                 (#x27 . #x27))))) ; '\'' '\''

(add-hook 'eshell-mode-hook 'jd:eshell-mode-hook)

(jd:provide-feature jd:esh-mode-st)
