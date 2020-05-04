(define-key rcirc-mode-map (kbd "<M-u>") 'beginning-of-line)
(define-key rcirc-mode-map (kbd "<C-M-i>") 'jd:rcirc-insert-prev-input)
(define-key rcirc-mode-map (kbd "<C-M-k>") 'jd:rcirc-insert-next-input)
(define-key rcirc-mode-map (kbd "<jd:ret>") 'rcirc-send-input)
(define-key rcirc-mode-map (kbd "<jd:tab>") 'rcirc-complete)

(jd:provide-feature jd:rcirc-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/net/rcirc.elc
;; 
;; rcirc-track-minor-mode-map
;; --------------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; 
;; C-c C-@         rcirc-next-active-buffer
;; C-c C-SPC       rcirc-next-active-buffer
;; 
;; rcirc-multiline-minor-mode-map
;; ------------------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-x             Prefix Command
;; ESC             Prefix Command
;; 
;; ESC ESC         Prefix Command
;; 
;; C-x C-s         rcirc-multiline-minor-submit
;; 
;; C-c C-c         rcirc-multiline-minor-submit
;; C-c C-k         rcirc-multiline-minor-cancel
;; 
;; ESC ESC ESC     rcirc-multiline-minor-cancel
;; 
;; rcirc-mode-map
;; --------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; TAB             rcirc-complete
;; RET             rcirc-send-input
;; <nil>           Prefix Command
;; 
;; C-c C-a         rcirc-jump-to-first-unread-line
;; C-c C-b         rcirc-browse-url
;; C-c C-c         rcirc-edit-multiline
;; C-c C-d         rcirc-cmd-mode
;; C-c TAB         rcirc-toggle-ignore-buffer-activity
;; C-c C-j         rcirc-cmd-join
;; C-c C-k         rcirc-cmd-kick
;; C-c C-l         rcirc-toggle-low-priority
;; C-c RET         rcirc-cmd-msg
;; C-c C-n         rcirc-cmd-names
;; C-c C-o         rcirc-omit-mode
;; C-c C-p         rcirc-cmd-part
;; C-c C-q         rcirc-cmd-query
;; C-c C-r         rcirc-cmd-nick
;; C-c C-s         rcirc-switch-to-server-buffer
;; C-c C-t         rcirc-cmd-topic
;; C-c C-w         rcirc-cmd-whois
;; C-c C-x         rcirc-cmd-quit
;; 
;; M-n             rcirc-insert-next-input
;; M-p             rcirc-insert-prev-input
