(define-key help-mode-map (kbd "i") 'jd:backward-line)
(define-key help-mode-map (kbd "k") 'jd:forward-line)
(define-key help-mode-map (kbd "j") 'help-go-back)
(define-key help-mode-map (kbd "l") 'help-go-forward)
(define-key help-mode-map (kbd "<jd:ret>") 'push-button)
(define-key help-mode-map (kbd "<jd:tab>") 'forward-button)
(define-key help-mode-map (kbd "<jd:S-tab>") 'backward-button)

(provide 'jd:help-mode-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/help-mode.elc
;; 
;; help-mode-menu
;; --------------
;; key             binding
;; ---             -------
;; 
;; <Move to Next Button>           forward-button
;; <Move to Previous Button>       backward-button
;; <Next Topic>                    help-go-forward
;; <Previous Topic>                help-go-back
;; <Show Help for Symbol>          help-follow-symbol
;; 
;; help-mode-map
;; -------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; TAB             forward-button
;; RET             help-follow
;; ESC             Prefix Command
;; SPC             scroll-up-command
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               describe-mode
;; g               revert-buffer
;; h               describe-mode
;; l               help-go-back
;; q               quit-window
;; r               help-go-forward
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <XF86Back>      help-go-back
;; <XF86Forward>   help-go-forward
;; <backtab>       backward-button
;; <mouse-2>       help-follow-mouse
;; <remap>         Prefix Command
;; 
;; C-c C-b         help-go-back
;; C-c C-c         help-follow-symbol
;; C-c C-f         help-go-forward
;; 
;; ESC TAB         backward-button

