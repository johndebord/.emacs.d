(setq-default eshell-highlight-prompt nil)
(setq-default eshell-prompt-function  'jd:eshell-prompt)

(defun jd:eshell-prompt ()
  "https://emacs.stackexchange.com/questions/33405/no-colors-for-eshell
Highlight eshell pwd and prompt separately."
  (mapconcat
   (lambda (list)
     (propertize (car list)
                 'read-only      t
                 'font-lock-face (cdr list)
                 'front-sticky   '(font-lock-face read-only)
                 'rear-nonsticky '(font-lock-face read-only)))
   `((,(abbreviate-file-name (eshell/pwd)) :foreground "#569cd6")
     (,(if (zerop (user-uid)) " # " " $ ") :foreground "#569cd6"))
   ""))

(add-hook 'eshell-before-prompt-hook
          (lambda ()
            (setenv "TERM" "xterm-256color")))

(provide 'jd:em-prompt-st)
