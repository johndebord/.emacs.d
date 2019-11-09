(setq-default gud-gud-gdb-command-name "gdb --quiet --fullname")

;;; Hack to undo the hack on line 65 of `gud.el'
(global-set-key (kbd "C-x") nil)

(defun jd:gud-clear-buffer ()
  (interactive)
  (let ((jd:minimum-viable-eshell-command-column-number 6)
        (jd:saved-column-number nil))
    (if (and (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
             (>= (current-column) jd:minimum-viable-eshell-command-column-number))
        (setq jd:saved-column-number (current-column)))
    (let ((inhibit-read-only t)
          (jd:start (goto-char (point-min)))
          (jd:end
           (progn
             (goto-char (point-max))
             (forward-line -1)
             (end-of-line)
             (point))))
      (delete-region jd:start jd:end)
      (forward-line)
      (backward-delete-char 1))
    (goto-char (point-max))
    (if (not (equal jd:saved-column-number nil))
        (move-to-column jd:saved-column-number))))

(defun jd:gud-start ()
  "Erase input/output upon start"
  (interactive)
  (jd:gud-clear-buffer)
  (insert "r")
  (comint-send-input)
  (insert "y")
  (comint-send-input)
  (comint-send-input))

(add-hook 'gud-mode-hook
          (lambda ()
            (font-lock-mode -1)
            (make-local-variable 'font-lock-function)
            (setq font-lock-function (lambda (_) nil))
            (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter nil t)))

(provide 'jd:gud-st.el)
