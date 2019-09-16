(defun jd:get-string-from-file (filePath beg end)
  (with-temp-buffer
    (insert-file-contents filePath nil beg end)
    (buffer-string)))

(defvar jd:irc-nickname (jd:get-string-from-file "~/.authinfo" 0 15))
(defvar jd:irc-password (jd:get-string-from-file "~/.authinfo" 16 26))

(setq-default rcirc-authinfo `(("freenode" nickserv ,jd:irc-nickname ,jd:irc-password)))
(setq-default rcirc-default-nick jd:irc-nickname)
(setq-default rcirc-fill-prefix "       ")
(setq-default rcirc-server-alist '(("irc.freenode.net" :port 6667 :channels ("#emacs"))))

(provide 'jd:rcirc-st.el)
