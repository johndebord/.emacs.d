;;; Hack to undo the hack on line 65 of `gud.el'
(global-set-key (kbd "C-x") nil)

(defun jd:gud-clear-buffer ()
  "There is a bug where if I go up one line, the entire
screen clears; fix this behavior later."
  (interactive)
  (if (not (equal (line-number-at-pos (goto-char (point-max))) 1))
      (progn
	(goto-char (point-max))
	(goto-char (point-min))
	(set-mark-command nil)
	(goto-char (point-max))
	(forward-line -1)
	(end-of-line)
	(delete-active-region)
	(forward-line)
	(delete-active-region)
	(end-of-line))))

(defun jd:gud-start ()
  "Erase input/output upon start"
  (interactive)
  (jd:gud-clear-buffer)
  (insert "r")
  (comint-send-input)
  (insert "y")
  (comint-send-input)
  (comint-send-input))

(provide 'jd:gud-st.el)
