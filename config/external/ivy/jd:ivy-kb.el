(define-key ivy-minibuffer-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key ivy-minibuffer-map (kbd "<C-i>") 'jd:ivy-scroll-down-command)
(define-key ivy-minibuffer-map (kbd "<C-k>") 'jd:ivy-scroll-up-command)
(define-key ivy-minibuffer-map (kbd "<C-o>") 'ivy-end-of-buffer)
(define-key ivy-minibuffer-map (kbd "<C-u>") 'ivy-beginning-of-buffer)
(define-key ivy-minibuffer-map (kbd "<M-;>") 'swiper-recenter-top-bottom)
(define-key ivy-minibuffer-map (kbd "<M-i>") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "<M-j>") 'counsel-up-directory)
(define-key ivy-minibuffer-map (kbd "<M-k>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "<M-l>") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<M-o>") 'end-of-line)
(define-key ivy-minibuffer-map (kbd "<M-u>") 'beginning-of-line)
(define-key ivy-minibuffer-map (kbd "<C-M-i>") 'ivy-previous-history-element)
(define-key ivy-minibuffer-map (kbd "<C-M-k>") 'ivy-next-history-element)
(define-key ivy-minibuffer-map (kbd "<jd:ret>") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<jd:tab>") 'ivy-partial)
(define-key ivy-minibuffer-map (kbd "<jd:C-bks>") 'jd:delete-word-backward)
(define-key ivy-minibuffer-map (kbd "<jd:M-bks>") 'ivy-switch-buffer-kill)
(define-key ivy-minibuffer-map (kbd "<jd:M-ret>") 'jd:preview-function)
(define-key ivy-minibuffer-map (kbd "<down>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "<up>") 'ivy-previous-line)

(jd:provide-feature jd:ivy-kb)

;; File: $HOME/.emacs.d/config/external/elpa/ivy-20190825.1023/ivy.el
;; 
;; ivy-mode-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; <remap>         Prefix Command
;; 
;; <remap> <switch-to-buffer>      ivy-switch-buffer
;; <remap> <switch-to-buffer-other-window>
;;                                 ivy-switch-buffer-other-window
;; 
;; ivy-minibuffer-map
;; ------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-g             minibuffer-keyboard-quit
;; TAB             ivy-partial-or-done
;; C-j             ivy-alt-done
;; RET             ivy-done
;; C-o             hydra-ivy/body
;; C-r             ivy-reverse-i-search
;; C-s             ivy-next-line-or-history
;; C-v             ivy-scroll-up-command
;; SPC             self-insert-command
;; $               ivy-magic-read-file-env
;; S-SPC           ivy-restrict-to-matches
;; C-'             ivy-avy
;; <down-mouse-1>  ignore
;; <mouse-1>       ivy-mouse-done
;; <mouse-3>       ivy-mouse-dispatching-done
;; <next>          ivy-scroll-up-command
;; <nil>           Prefix Command
;; <prior>         ivy-scroll-down-command
;; <remap>         Prefix Command
;; <right>         ivy-forward-char
;; 
;; C-c C-a         ivy-toggle-ignore
;; C-c C-o         ivy-occur
;; C-c C-s         ivy-rotate-sort
;; 
;; <remap> <backward-delete-char-untabify>
;;                                 ivy-backward-delete-char
;; <remap> <backward-kill-word>    ivy-backward-kill-word
;; <remap> <beginning-of-buffer>   ivy-beginning-of-buffer
;; <remap> <delete-backward-char>  ivy-backward-delete-char
;; <remap> <delete-char>           ivy-delete-char
;; <remap> <describe-mode>         ivy-help
;; <remap> <end-of-buffer>         ivy-end-of-buffer
;; <remap> <forward-char>          ivy-forward-char
;; <remap> <kill-line>             ivy-kill-line
;; <remap> <kill-ring-save>        ivy-kill-ring-save
;; <remap> <kill-whole-line>       ivy-kill-whole-line
;; <remap> <kill-word>             ivy-kill-word
;; <remap> <next-line>             ivy-next-line
;; <remap> <previous-line>         ivy-previous-line
;; <remap> <scroll-down-command>   ivy-scroll-down-command
;; <remap> <scroll-up-command>     ivy-scroll-up-command
;; 
;; C-M-a           ivy-read-action
;; C-M-j           ivy-immediate-done
;; M-RET           ivy-call
;; C-M-n           ivy-next-line-and-call
;; C-M-o           ivy-dispatching-call
;; C-M-p           ivy-previous-line-and-call
;; C-M-y           ivy-insert-current-full
;; M-i             ivy-insert-current
;; M-j             ivy-yank-word
;; M-n             ivy-next-history-element
;; M-o             ivy-dispatching-done
;; M-p             ivy-previous-history-element
;; M-r             ivy-toggle-regexp-quote
;; M-v             ivy-scroll-down-command
;; 
;; ivy-switch-buffer-map
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; C-k             ivy-switch-buffer-kill
;; 
;; ivy-reverse-i-search-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; C-k             ivy-reverse-i-search-kill
;; 
;; ivy-occur-mode-map
;; ------------------
;; key             binding
;; ---             -------
;; 
;; C-d             ivy-occur-delete-candidate
;; RET             ivy-occur-press-and-switch
;; R               read-only-mode
;; a               ivy-occur-read-action
;; c               ivy-occur-toggle-calling
;; f               ivy-occur-press
;; g               ivy-occur-revert-buffer
;; h               backward-char
;; j               ivy-occur-next-line
;; k               ivy-occur-previous-line
;; l               forward-char
;; o               ivy-occur-dispatch
;; q               quit-window
;; <mouse-1>       ivy-occur-click
;; 
;; ivy-occur-grep-mode-map
;; -----------------------
;; key             binding
;; ---             -------
;; 
;; C-d             ivy-occur-delete-candidate
;; RET             ivy-occur-press-and-switch
;; C-x             Prefix Command
;; R               read-only-mode
;; a               ivy-occur-read-action
;; c               ivy-occur-toggle-calling
;; f               ivy-occur-press
;; g               ivy-occur-revert-buffer
;; h               backward-char
;; j               ivy-occur-next-line
;; k               ivy-occur-previous-line
;; l               forward-char
;; o               ivy-occur-dispatch
;; q               quit-window
;; w               ivy-wgrep-change-to-wgrep-mode
;; <mouse-1>       ivy-occur-click
;; 
;; C-x C-q         ivy-wgrep-change-to-wgrep-mode
