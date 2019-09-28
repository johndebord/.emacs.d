(defun jd:get-string-from-file (jd:path jd:beg jd:end)
  (with-temp-buffer
    (insert-file-contents jd:path nil jd:beg jd:end)
    (buffer-string)))

(defconst jd:irc-nickname (jd:get-string-from-file "~/.authinfo"  0 15))
(defconst jd:irc-password (jd:get-string-from-file "~/.authinfo" 16 26))

(setq-default rcirc-authinfo `(("freenode" nickserv ,jd:irc-nickname ,jd:irc-password)))
(setq-default rcirc-default-nick jd:irc-nickname)
(setq-default rcirc-fill-prefix "       ")
(setq-default rcirc-server-alist '(("irc.freenode.net" :port 6667 :channels ("#emacs"))))

(provide 'jd:rcirc-st.el)
