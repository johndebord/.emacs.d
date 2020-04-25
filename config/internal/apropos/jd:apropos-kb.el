(define-key apropos-mode-map (kbd "i") 'jd:backward-line)
(define-key apropos-mode-map (kbd "k") 'jd:forward-line)
(define-key apropos-mode-map (kbd "<jd:ret>") 'apropos-follow)
(define-key apropos-mode-map (kbd "<jd:tab>") 'forward-button)
(define-key apropos-mode-map (kbd "<jd:S-tab>") 'backward-button)

(provide 'jd:apropos-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/apropos.elc
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
