(jd:provide-feature jd:isearch-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/isearch.elc
;; 
;; isearch-help-map
;; ----------------
;; key             binding
;; ---             -------
;; 
;; C-h             isearch-help-for-help
;; ?               isearch-help-for-help
;; b               isearch-describe-bindings
;; k               isearch-describe-key
;; m               isearch-describe-mode
;; q               help-quit
;; <f1>            isearch-help-for-help
;; <help>          isearch-help-for-help
;; 
;; minibuffer-local-isearch-map
;; ----------------------------
;; key             binding
;; ---             -------
;; 
;; C-f             isearch-yank-char-in-minibuffer
;; C-g             minibuffer-keyboard-quit
;; TAB             self-insert-command
;; C-j             exit-minibuffer
;; RET             exit-minibuffer
;; C-r             isearch-reverse-exit-minibuffer
;; C-s             isearch-forward-exit-minibuffer
;; ESC             Prefix Command
;; <C-tab>         file-cache-minibuffer-complete
;; <XF86Back>      previous-history-element
;; <XF86Forward>   next-history-element
;; <down>          next-line-or-history-element
;; <next>          next-history-element
;; <prior>         previous-history-element
;; <right>         isearch-yank-char-in-minibuffer
;; <up>            previous-line-or-history-element
;; 
;; ESC TAB         isearch-complete-edit
;; 
;; ESC n           next-history-element
;; ESC p           previous-history-element
;; ESC r           previous-matching-history-element
;; ESC s           next-matching-history-element
;; 
;; isearch-mode-map
;; ----------------
;; key             binding
;; ---             -------
;; 
;; TAB .. C-j      isearch-printing-char
;; SPC .. ~        isearch-printing-char
;; ¬Ä .. ¯èøΩø       isearch-printing-char
;; Ä .. ˇ    isearch-printing-char
;; 
;; C-g             isearch-abort
;; C-h             Prefix Command
;; RET             isearch-exit
;; C-q             isearch-quote-char
;; C-r             isearch-repeat-backward
;; C-s             isearch-repeat-forward
;; C-w             isearch-yank-word-or-char
;; C-x             Prefix Command
;; C-y             isearch-yank-kill
;; ESC             Prefix Command
;; C-\             isearch-toggle-input-method
;; C-^             isearch-toggle-specified-input-method
;; DEL             isearch-delete-char
;; S-SPC           isearch-printing-char
;; <f1>            Prefix Command
;; <help>          Prefix Command
;; <mouse-2>       isearch-mouse-2
;; <nil>           Prefix Command
;; <return>        isearch-exit
;; <xterm-paste>   isearch-xterm-paste
;; 
;; C-h C-h         isearch-help-for-help
;; C-h ?           isearch-help-for-help
;; C-h b           isearch-describe-bindings
;; C-h k           isearch-describe-key
;; C-h m           isearch-describe-mode
;; C-h q           help-quit
;; C-h <f1>        isearch-help-for-help
;; C-h <help>      isearch-help-for-help
;; 
;; C-x 8           Prefix Command
;; 
;; ESC TAB         isearch-complete
;; ESC C-r         isearch-repeat-backward
;; ESC C-s         isearch-repeat-forward
;; ESC C-w         isearch-del-char
;; ESC C-y         isearch-yank-char
;; ESC ESC         Prefix Command
;; ESC %           isearch-query-replace
;; ESC c           isearch-toggle-case-fold
;; ESC e           isearch-edit-string
;; ESC n           isearch-ring-advance
;; ESC p           isearch-ring-retreat
;; ESC r           isearch-toggle-regexp
;; ESC s           Prefix Command
;; ESC y           isearch-yank-pop
;; ESC C-%         isearch-query-replace-regexp
;; 
;; M-s             Prefix Command
;; 
;; M-s SPC         isearch-toggle-lax-whitespace
;; M-s '           isearch-toggle-char-fold
;; M-s _           isearch-toggle-symbol
;; M-s c           isearch-toggle-case-fold
;; M-s i           isearch-toggle-invisible
;; M-s r           isearch-toggle-regexp
;; M-s w           isearch-toggle-word
;; 
;; <f1> C-h        isearch-help-for-help
;; <f1> ?          isearch-help-for-help
;; <f1> b          isearch-describe-bindings
;; <f1> k          isearch-describe-key
;; <f1> m          isearch-describe-mode
;; <f1> q          help-quit
;; <f1> <f1>       isearch-help-for-help
;; <f1> <help>     isearch-help-for-help
;; 
;; <help> C-h      isearch-help-for-help
;; <help> ?        isearch-help-for-help
;; <help> b        isearch-describe-bindings
;; <help> k        isearch-describe-key
;; <help> m        isearch-describe-mode
;; <help> q        help-quit
;; <help> <f1>     isearch-help-for-help
;; <help> <help>   isearch-help-for-help
;; 
;; C-x 8 RET       isearch-char-by-name
;; 
;; ESC s C-e       isearch-yank-line
;; ESC s SPC       isearch-toggle-lax-whitespace
;; ESC s '         isearch-toggle-char-fold
;; ESC s _         isearch-toggle-symbol
;; ESC s c         isearch-toggle-case-fold
;; ESC s e         isearch-edit-string
;; ESC s h         Prefix Command
;; ESC s i         isearch-toggle-invisible
;; ESC s o         isearch-occur
;; ESC s r         isearch-toggle-regexp
;; ESC s w         isearch-toggle-word
;; 
;; ESC ESC ESC     isearch-cancel
;; 
;; ESC s h r       isearch-highlight-regexp
