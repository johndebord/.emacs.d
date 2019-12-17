;; A hacky approach to setting the `eshell` `TERM` environment variable to
;; `xterm-256color`; this is so that I get colored output in `eshell` (like when
;; using git, compiling, etc.). There seems to be no other way to do this (to
;; the best of my knowledge).
(defun jd:eshell-before-prompt-hook ()
  (setenv "TERM" "xterm-256color"))

(add-hook 'eshell-before-prompt-hook 'jd:eshell-before-prompt-hook)

(provide 'jd:em-prompt-st)
