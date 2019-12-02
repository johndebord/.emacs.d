(defalias 'ff 'find-file)

(setq-default eshell-command-map nil)
(setq-default eshell-directory-name (concat jd:internal-prefix "esh-mode/eshell"))
(setq-default eshell-output-filter-functions (remove 'eshell-handle-ansi-color eshell-output-filter-functions))

(add-to-list 'eshell-preoutput-filter-functions 'xterm-color-filter)

(defun jd:counsel-esh-history ()
  (interactive)
  (company-abort)
  (counsel-esh-history))

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

(defun jd:eshell-clear-buffer ()
  (interactive)
  (let ((jd:minimum-viable-eshell-command-column-number 4)
        (jd:saved-column-number nil))
    (if (and (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
             (>= (current-column) jd:minimum-viable-eshell-command-column-number))
        (setq jd:saved-column-number (current-column)))
    (goto-char (point-max))
    (jd:eshell-beginning-of-line-or-prompt)
    (kill-line 1)
    (let ((inhibit-read-only t))
      (erase-buffer)
      (eshell-send-input)
      (beginning-of-line)
      (backward-delete-char 1))
    (goto-char (point-max))
    (yank)
    (if (not (equal jd:saved-column-number nil))
        (move-to-column jd:saved-column-number))))

(add-hook 'eshell-mode-hook
          (lambda () (font-lock-mode t)))

(provide 'jd:esh-mode-st)
