(setq-default gud-gud-gdb-command-name "gdb --quiet --fullname")

(defun jd:comint-next-input ()
  "Decide whether or not the next input should be displayed, depending on the
context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (progn
        (end-of-line)
        (comint-next-input 1))
    (progn
      (scroll-down-line -1)
      (forward-line 1))))


(defun jd:comint-previous-input ()
  "Decide whether or not the previous input should be displayed, depending on
the context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (progn
        (end-of-line)
        (comint-previous-input 1))
    (progn
      (scroll-down-line 1)
      (forward-line -1))))

(defun jd:gud-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'gud-mode-hook 'jd:gud-mode-hook)

(jd:provide-feature jd:gud-st)
