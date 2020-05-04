(define-key minibuffer-local-shell-command-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-shell-command-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-shell-command-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-shell-command-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(define-key read-expression-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key read-expression-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-expression-map (kbd "<C-M-k>") 'next-history-element)
(define-key read-expression-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key read-expression-map (kbd "<jd:tab>") 'completion-at-point)
(define-key read-expression-map (kbd "<jd:C-ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:S-ret>") 'newline)

(jd:provide-feature jd:simple-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/simple.elc
;; 
;; messages-buffer-mode-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; SPC             scroll-up-command
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               describe-mode
;; h               describe-mode
;; q               quit-window
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <remap>         Prefix Command
;; 
;; process-menu-mode-map
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; d               process-menu-delete-process
;; 
;; special-mode-map
;; ----------------
;; key             binding
;; ---             -------
;; 
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
;; <remap>         Prefix Command
;; 
;; universal-argument-map
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; C-u             universal-argument-more
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <kp-0>          digit-argument
;; <kp-1>          digit-argument
;; <kp-2>          digit-argument
;; <kp-3>          digit-argument
;; <kp-4>          digit-argument
;; <kp-5>          digit-argument
;; <kp-6>          digit-argument
;; <kp-7>          digit-argument
;; <kp-8>          digit-argument
;; <kp-9>          digit-argument
;; <kp-subtract>   negative-argument
;; <switch-frame>  ??
;; 
;; minibuffer-local-shell-command-map
;; ----------------------------------
;; key             binding
;; ---             -------
;; 
;; C-g             minibuffer-keyboard-quit
;; TAB             completion-at-point
;; C-j             exit-minibuffer
;; RET             exit-minibuffer
;; ESC             Prefix Command
;; <C-tab>         file-cache-minibuffer-complete
;; <XF86Back>      previous-history-element
;; <XF86Forward>   next-history-element
;; <down>          next-line-or-history-element
;; <next>          next-history-element
;; <prior>         previous-history-element
;; <up>            previous-line-or-history-element
;; 
;; ESC n           next-history-element
;; ESC p           previous-history-element
;; ESC r           previous-matching-history-element
;; ESC s           next-matching-history-element
;; 
;; read-expression-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; C-g             minibuffer-keyboard-quit
;; TAB             completion-at-point
;; C-j             exit-minibuffer
;; RET             exit-minibuffer
;; ESC             Prefix Command
;; <C-tab>         file-cache-minibuffer-complete
;; <XF86Back>      previous-history-element
;; <XF86Forward>   next-history-element
;; <down>          next-line-or-history-element
;; <next>          next-history-element
;; <prior>         previous-history-element
;; <up>            previous-line-or-history-element
;; 
;; ESC TAB         completion-at-point
;; 
;; ESC n           next-history-element
;; ESC p           previous-history-element
;; ESC r           previous-matching-history-element
;; ESC s           next-matching-history-element
;; 
;; completion-list-mode-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; TAB             next-completion
;; RET             choose-completion
;; ESC             Prefix Command
;; q               quit-window
;; z               kill-current-buffer
;; <backtab>       previous-completion
;; <follow-link>   mouse-face
;; <left>          previous-completion
;; <mouse-2>       choose-completion
;; <right>         next-completion
;; 
;; ESC ESC         Prefix Command
;; 
;; ESC ESC ESC     delete-completion-window
;; 
;; visual-line-mode-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; <remap>         Prefix Command
;; 
;; <remap> <kill-line>             kill-visual-line
;; <remap> <move-beginning-of-line>
;;                                 beginning-of-visual-line
;; <remap> <move-end-of-line>      end-of-visual-line
