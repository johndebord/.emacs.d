(define-key minibuffer-local-completion-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-completion-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-completion-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-completion-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-completion-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-completion-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(define-key minibuffer-local-filename-completion-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-filename-completion-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-filename-completion-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(define-key minibuffer-local-must-match-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-must-match-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-must-match-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-must-match-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-must-match-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-must-match-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(provide 'jd:minibuffer-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/minibuffer.elc
;; 
;; minibuffer-local-must-match-filename-map
;; ----------------------------------------
;; key             binding
;; ---             -------
;; 
;; minibuffer-local-filename-must-match-map
;; ----------------------------------------
;; key             binding
;; ---             -------
;; 
;; minibuffer-local-filename-completion-map
;; ----------------------------------------
;; key             binding
;; ---             -------
;; 
;; minibuffer-local-must-match-map
;; -------------------------------
;; key             binding
;; ---             -------
;; 
;; C-g             minibuffer-keyboard-quit
;; TAB             minibuffer-complete
;; C-j             minibuffer-complete-and-exit
;; RET             minibuffer-complete-and-exit
;; ESC             Prefix Command
;; SPC             minibuffer-complete-word
;; ?               minibuffer-completion-help
;; <C-tab>         file-cache-minibuffer-complete
;; <XF86Back>      previous-history-element
;; <XF86Forward>   next-history-element
;; <down>          next-line-or-history-element
;; <next>          next-history-element
;; <nil>           Prefix Command
;; <prior>         switch-to-completions
;; <up>            previous-line-or-history-element
;; 
;; M-v             switch-to-completions
;; 
;; ESC v           switch-to-completions
;; 
;; ESC n           next-history-element
;; ESC p           previous-history-element
;; ESC r           previous-matching-history-element
;; ESC s           next-matching-history-element
;; 
;; minibuffer-local-completion-map
;; -------------------------------
;; key             binding
;; ---             -------
;; 
;; C-g             minibuffer-keyboard-quit
;; TAB             minibuffer-complete
;; C-j             exit-minibuffer
;; RET             exit-minibuffer
;; ESC             Prefix Command
;; SPC             minibuffer-complete-word
;; ?               minibuffer-completion-help
;; <C-tab>         file-cache-minibuffer-complete
;; <XF86Back>      previous-history-element
;; <XF86Forward>   next-history-element
;; <down>          next-line-or-history-element
;; <next>          next-history-element
;; <nil>           Prefix Command
;; <prior>         switch-to-completions
;; <up>            previous-line-or-history-element
;; 
;; M-v             switch-to-completions
;; 
;; ESC v           switch-to-completions
;; 
;; ESC n           next-history-element
;; ESC p           previous-history-element
;; ESC r           previous-matching-history-element
;; ESC s           next-matching-history-element
;; 
;; minibuffer-inactive-mode-map
;; ----------------------------
;; key             binding
;; ---             -------
;; 
;; 0 .. 9          digit-argument
;; e .. f          find-file-other-frame
;; 
;; -               negative-argument
;; b               switch-to-buffer-other-frame
;; i               info
;; m               mail
;; n               make-frame
;; <down-mouse-1>  ignore
;; <mouse-1>       view-echo-area-messages
;; <remap>         Prefix Command
;; 
;; completion-in-region-mode-map
;; -----------------------------
;; key             binding
;; ---             -------
;; 
;; TAB             completion-at-point
;; ESC             Prefix Command
;; 
;; ESC ?           completion-help-at-point
