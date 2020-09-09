(setq-default rcirc-authinfo `(("freenode" nickserv ,jd:irc-nickname ,jd:irc-password)))
(setq-default rcirc-default-nick jd:irc-nickname)
(setq-default rcirc-fill-prefix "       ")
(setq-default rcirc-prompt "(rcirc) ")
(setq-default rcirc-server-alist '(("irc.freenode.net" :port 6667 :channels ("#emacs"))))

(defun jd:rcirc-insert-next-input ()
  "Decide whether or not the next input should be displayed, depending on the
context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (rcirc-insert-next-input)
    (scroll-down-line -1)
    (forward-line 1)))

(defun jd:rcirc-insert-prev-input ()
  "Decide whether or not the previous input should be displayed, depending on
the context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (rcirc-insert-prev-input)
    (scroll-down-line 1)
    (forward-line -1)))

(defun jd:rcirc-mode-hook ()
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'rcirc-mode-hook 'jd:rcirc-mode-hook)

(jd:provide-feature jd:rcirc-st)
