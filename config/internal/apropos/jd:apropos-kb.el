(setq-default apropos-mode-map (make-sparse-keymap))
(define-key apropos-mode-map (kbd "q") 'quit-window)

(provide 'jd:apropos-kb)

;; File: /usr/local/share/emacs/26.3.50/lisp/apropos.elc
;; 
;; apropos-mode-map
;; ----------------
;; key             binding
;; ---             -------
;; 
;; TAB             forward-button
;; RET             apropos-follow
;; ESC             Prefix Command
;; SPC             scroll-up-command
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               describe-mode
;; g               revert-buffer
;; h               describe-mode
;; q               quit-window
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <backtab>       backward-button
;; <remap>         Prefix Command
;; 
;; ESC TAB         backward-button
