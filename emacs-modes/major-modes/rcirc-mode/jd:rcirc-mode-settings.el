(provide 'jd:rcirc-mode-settings.el)

(defun jd:get-string-from-file (filePath beg end)
  (with-temp-buffer
    (insert-file-contents filePath nil beg end)
    (buffer-string)))

(defvar jd:irc-nickname (jd:get-string-from-file "~/.authinfo" 0 15))
(defvar jd:irc-password (jd:get-string-from-file "~/.authinfo" 16 26))

;;;;;;;;;;;;;;
;;; `rcirc.el'
(setq rcirc-default-nick jd:irc-nickname)
(setq rcirc-fill-prefix "       ")
(setq rcirc-authinfo `(("freenode" nickserv ,jd:irc-nickname ,jd:irc-password)))
(setq rcirc-server-alist '(("irc.freenode.net" :port 6667 :channels ("#emacs"))))