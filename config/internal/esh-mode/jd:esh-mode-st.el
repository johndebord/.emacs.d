;; Customization variables.
(defvar eshell-buffer-maximum-lines)
(defvar eshell-exit-hook)
(defvar eshell-expand-input-functions)
(defvar eshell-first-time-mode-hook)
(defvar eshell-input-filter-functions)
(defvar eshell-kill-on-exit)
(defvar eshell-mode-hook)
(defvar eshell-mode-unload-hook)
(defvar eshell-password-prompt-regexp)
(defvar eshell-preoutput-filter-functions)
(defvar eshell-scroll-show-maximum-output)
(defvar eshell-scroll-to-bottom-on-input)
(defvar eshell-scroll-to-bottom-on-output)
(defvar eshell-send-direct-to-subprocesses)
(defvar eshell-skip-prompt-function)
(defvar eshell-status-in-mode-line)

;; Determines whether or not it is appropriate to go to the true beginning of
;; the line, or just to the end of the current prompt based on the context of
;; cursor in the buffer.
(defun jd:eshell-beginning-of-line-or-prompt ()
  (interactive "^")
  (if (or
       (not (equal (line-number-at-pos) (save-restriction
                                          (line-number-at-pos (point-max)))))
       (equal (get-text-property (line-beginning-position) 'read-only) nil)
       (and (equal (get-text-property (line-beginning-position) 'read-only) t)
            (equal (char-before) #x24)))
      (beginning-of-line)
    (eshell-bol)))

;; Clear the whole state of the `eshell` buffer, but at the same time, preserve
;; the current text on the prompt line; this is to prevent the annoyance of
;; having to re-type whatever was on the prompt line after the clearing of the
;; buffer.
(defun jd:eshell-clear-buffer ()
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
          (move-to-column saved-column-number)))))

;; Ensures that `company` will discontinue so that this command may ensue.
(defun jd:counsel-esh-history ()
  (interactive)
  (company-abort)
  (counsel-esh-history))

;; Decide whether or not the next input should be displayed, depending on the
;; context of the cursor in the buffer.
(defun jd:eshell-next-input ()
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (eshell-next-input 1)
    (progn
      (scroll-down-line -1)
      (line-move 1))))

;; Decide whether or not the previous input should be displayed, depending on
;; the context of the cursor in the buffer.
(defun jd:eshell-previous-input ()
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (eshell-previous-input 1)
    (progn
      (scroll-down-line 1)
      (line-move -1))))

(defun jd:eshell-mode-hook ()
  (electric-pair-mode 1)
  (font-lock-mode 1)
  (setenv "TERM" "xterm-256color")
  ;; Hack to get around the wonky way the `eshell` keybindings are implemented
  ;; (this is one of the cleanest ways I could come up with).
  (let ((message-log-max nil))
    (with-temp-message (or (current-message) "")
      (jd:load-feature jd:esh-mode-kb jd:internal-prefix "esh-mode/")))
  (set (make-local-variable 'electric-pair-pairs)
       (append electric-pair-pairs
               '((#x60 . #x60)     ; '`' '`'
                 (#x27 . #x27))))) ; '\'' '\''

(add-hook 'eshell-mode-hook 'jd:eshell-mode-hook)

(provide 'jd:esh-mode-st)
