(define-key c++-mode-map (kbd "<C-b>") 'compile)
(define-key c++-mode-map (kbd "<M-h>") 'lsp-find-definition)
(define-key c++-mode-map (kbd "<C-M-o>") 'jd:next-error)
(define-key c++-mode-map (kbd "<C-M-u>") 'jd:previous-error)
(define-key c++-mode-map (kbd "<C-M-h>") 'lsp-find-references)
(define-key c++-mode-map (kbd "<C-c> <C-c>") 'jd:cpp-print-add-print)
(define-key c++-mode-map (kbd "<C-c> <C-d>") 'jd:cpp-print-delete-prints)
(define-key c++-mode-map (kbd "<C-x> <M-h>") 'lsp-find-declaration)
(define-key c++-mode-map (kbd "<C-x> <C-M-h>") 'lsp-describe-thing-at-point)
(define-key c++-mode-map (kbd "<mouse-8>") 'xref-pop-marker-stack)
(define-key c++-mode-map (kbd "<mouse-9>") 'lsp-find-definition)

(define-key c++-mode-map (kbd "<M-h>") 'jd:lsp-find-definition)
(define-key c++-mode-map (kbd "<C-M-h>") 'jd:lsp-find-references)
(define-key c++-mode-map (kbd "<C-x> <M-h>") 'jd:lsp-find-declaration)

(jd:provide-feature jd:cc-mode-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/progmodes/cc-mode.elc
;; 
;; c-awk-menu
;; ----------
;; key             binding
;; ---             -------
;; 
;; <Backward Statement>            c-beginning-of-statement
;; <Comment Out Region>            comment-region
;; <Fill Comment Paragraph>        c-fill-paragraph
;; <Forward Statement>             c-end-of-statement
;; <Indent Expression>             c-indent-exp
;; <Indent Line or Region>         c-indent-line-or-region
;; <Style...>      Prefix Command
;; <Toggle...>     Prefix Command
;; <Uncomment Region>              menu-function-18
;; 
;; <Style...> <Guess Style from this Buffer>
;;                                 c-guess-buffer-no-install
;; <Style...> <Install the Last Guessed Style...>
;;                                 c-guess-install
;; <Style...> <Set Style...>       c-set-style
;; <Style...> <Show Current Style Name>
;;                                 menu-function-19
;; <Style...> <View the Last Guessed Style>
;;                                 c-guess-view
;; 
;; <Toggle...> <Auto newline>      c-toggle-auto-newline
;; <Toggle...> <Electric mode>     c-toggle-electric-state
;; <Toggle...> <Hungry delete>     c-toggle-hungry-state
;; <Toggle...> <Subword mode>      c-subword-mode
;; <Toggle...> <Syntactic indentation>
;;                                 c-toggle-syntactic-indentation
;; 
;; c-mode-base-map
;; ---------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               c-electric-pound
;; ( .. )          c-electric-paren
;; *               c-electric-star
;; ,               c-electric-semi&comma
;; /               c-electric-slash
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; c-pike-menu
;; -----------
;; key             binding
;; ---             -------
;; 
;; <Backslashify>  c-backslash-region
;; <Backward Conditional>          c-backward-conditional
;; <Backward Statement>            c-beginning-of-statement
;; <Comment Out Region>            comment-region
;; <Fill Comment Paragraph>        c-fill-paragraph
;; <Forward Conditional>           c-forward-conditional
;; <Forward Statement>             c-end-of-statement
;; <Indent Expression>             c-indent-exp
;; <Indent Line or Region>         c-indent-line-or-region
;; <Macro Expand Region>           c-macro-expand
;; <Style...>      Prefix Command
;; <Toggle...>     Prefix Command
;; <Uncomment Region>              menu-function-18
;; <Up Conditional>                c-up-conditional
;; 
;; <Style...> <Guess Style from this Buffer>
;;                                 c-guess-buffer-no-install
;; <Style...> <Install the Last Guessed Style...>
;;                                 c-guess-install
;; <Style...> <Set Style...>       c-set-style
;; <Style...> <Show Current Style Name>
;;                                 menu-function-19
;; <Style...> <View the Last Guessed Style>
;;                                 c-guess-view
;; 
;; <Toggle...> <Auto newline>      c-toggle-auto-newline
;; <Toggle...> <Electric mode>     c-toggle-electric-state
;; <Toggle...> <Hungry delete>     c-toggle-hungry-state
;; <Toggle...> <Subword mode>      c-subword-mode
;; <Toggle...> <Syntactic indentation>
;;                                 c-toggle-syntactic-indentation
;; 
;; objc-mode-map
;; -------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               c-electric-pound
;; ( .. )          c-electric-paren
;; *               c-electric-star
;; ,               c-electric-semi&comma
;; /               c-electric-slash
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-c C-e         c-macro-expand
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; pike-mode-map
;; -------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               c-electric-pound
;; ( .. )          c-electric-paren
;; *               c-electric-star
;; ,               c-electric-semi&comma
;; /               c-electric-slash
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-c C-e         c-macro-expand
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; c-java-menu
;; -----------
;; key             binding
;; ---             -------
;; 
;; <Backward Statement>            c-beginning-of-statement
;; <Comment Out Region>            comment-region
;; <Fill Comment Paragraph>        c-fill-paragraph
;; <Forward Statement>             c-end-of-statement
;; <Indent Expression>             c-indent-exp
;; <Indent Line or Region>         c-indent-line-or-region
;; <Style...>      Prefix Command
;; <Toggle...>     Prefix Command
;; <Uncomment Region>              menu-function-18
;; 
;; <Style...> <Guess Style from this Buffer>
;;                                 c-guess-buffer-no-install
;; <Style...> <Install the Last Guessed Style...>
;;                                 c-guess-install
;; <Style...> <Set Style...>       c-set-style
;; <Style...> <Show Current Style Name>
;;                                 menu-function-19
;; <Style...> <View the Last Guessed Style>
;;                                 c-guess-view
;; 
;; <Toggle...> <Auto newline>      c-toggle-auto-newline
;; <Toggle...> <Electric mode>     c-toggle-electric-state
;; <Toggle...> <Hungry delete>     c-toggle-hungry-state
;; <Toggle...> <Subword mode>      c-subword-mode
;; <Toggle...> <Syntactic indentation>
;;                                 c-toggle-syntactic-indentation
;; 
;; java-mode-map
;; -------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               c-electric-pound
;; ( .. )          c-electric-paren
;; *               c-electric-star
;; ,               c-electric-semi&comma
;; /               c-electric-slash
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; c-idl-menu
;; ----------
;; key             binding
;; ---             -------
;; 
;; <Backslashify>  c-backslash-region
;; <Backward Conditional>          c-backward-conditional
;; <Backward Statement>            c-beginning-of-statement
;; <Comment Out Region>            comment-region
;; <Fill Comment Paragraph>        c-fill-paragraph
;; <Forward Conditional>           c-forward-conditional
;; <Forward Statement>             c-end-of-statement
;; <Indent Expression>             c-indent-exp
;; <Indent Line or Region>         c-indent-line-or-region
;; <Macro Expand Region>           c-macro-expand
;; <Style...>      Prefix Command
;; <Toggle...>     Prefix Command
;; <Uncomment Region>              menu-function-18
;; <Up Conditional>                c-up-conditional
;; 
;; <Style...> <Guess Style from this Buffer>
;;                                 c-guess-buffer-no-install
;; <Style...> <Install the Last Guessed Style...>
;;                                 c-guess-install
;; <Style...> <Set Style...>       c-set-style
;; <Style...> <Show Current Style Name>
;;                                 menu-function-19
;; <Style...> <View the Last Guessed Style>
;;                                 c-guess-view
;; 
;; <Toggle...> <Auto newline>      c-toggle-auto-newline
;; <Toggle...> <Electric mode>     c-toggle-electric-state
;; <Toggle...> <Hungry delete>     c-toggle-hungry-state
;; <Toggle...> <Subword mode>      c-subword-mode
;; <Toggle...> <Syntactic indentation>
;;                                 c-toggle-syntactic-indentation
;; 
;; c-c-menu
;; --------
;; key             binding
;; ---             -------
;; 
;; <Backslashify>  c-backslash-region
;; <Backward Conditional>          c-backward-conditional
;; <Backward Statement>            c-beginning-of-statement
;; <Comment Out Region>            comment-region
;; <Fill Comment Paragraph>        c-fill-paragraph
;; <Forward Conditional>           c-forward-conditional
;; <Forward Statement>             c-end-of-statement
;; <Indent Expression>             c-indent-exp
;; <Indent Line or Region>         c-indent-line-or-region
;; <Macro Expand Region>           c-macro-expand
;; <Style...>      Prefix Command
;; <Toggle...>     Prefix Command
;; <Uncomment Region>              menu-function-18
;; <Up Conditional>                c-up-conditional
;; 
;; <Style...> <Guess Style from this Buffer>
;;                                 c-guess-buffer-no-install
;; <Style...> <Install the Last Guessed Style...>
;;                                 c-guess-install
;; <Style...> <Set Style...>       c-set-style
;; <Style...> <Show Current Style Name>
;;                                 menu-function-19
;; <Style...> <View the Last Guessed Style>
;;                                 c-guess-view
;; 
;; <Toggle...> <Auto newline>      c-toggle-auto-newline
;; <Toggle...> <Electric mode>     c-toggle-electric-state
;; <Toggle...> <Hungry delete>     c-toggle-hungry-state
;; <Toggle...> <Subword mode>      c-subword-mode
;; <Toggle...> <Syntactic indentation>
;;                                 c-toggle-syntactic-indentation
;; 
;; c++-mode-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               c-electric-pound
;; ( .. )          c-electric-paren
;; *               c-electric-star
;; ,               c-electric-semi&comma
;; /               c-electric-slash
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; <               c-electric-lt-gt
;; >               c-electric-lt-gt
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-c C-e         c-macro-expand
;; C-c :           c-scope-operator
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; c-objc-menu
;; -----------
;; key             binding
;; ---             -------
;; 
;; <Backslashify>  c-backslash-region
;; <Backward Conditional>          c-backward-conditional
;; <Backward Statement>            c-beginning-of-statement
;; <Comment Out Region>            comment-region
;; <Fill Comment Paragraph>        c-fill-paragraph
;; <Forward Conditional>           c-forward-conditional
;; <Forward Statement>             c-end-of-statement
;; <Indent Expression>             c-indent-exp
;; <Indent Line or Region>         c-indent-line-or-region
;; <Macro Expand Region>           c-macro-expand
;; <Style...>      Prefix Command
;; <Toggle...>     Prefix Command
;; <Uncomment Region>              menu-function-18
;; <Up Conditional>                c-up-conditional
;; 
;; <Style...> <Guess Style from this Buffer>
;;                                 c-guess-buffer-no-install
;; <Style...> <Install the Last Guessed Style...>
;;                                 c-guess-install
;; <Style...> <Set Style...>       c-set-style
;; <Style...> <Show Current Style Name>
;;                                 menu-function-19
;; <Style...> <View the Last Guessed Style>
;;                                 c-guess-view
;; 
;; <Toggle...> <Auto newline>      c-toggle-auto-newline
;; <Toggle...> <Electric mode>     c-toggle-electric-state
;; <Toggle...> <Hungry delete>     c-toggle-hungry-state
;; <Toggle...> <Subword mode>      c-subword-mode
;; <Toggle...> <Syntactic indentation>
;;                                 c-toggle-syntactic-indentation
;; 
;; c-c++-menu
;; ----------
;; key             binding
;; ---             -------
;; 
;; <Backslashify>  c-backslash-region
;; <Backward Conditional>          c-backward-conditional
;; <Backward Statement>            c-beginning-of-statement
;; <Comment Out Region>            comment-region
;; <Fill Comment Paragraph>        c-fill-paragraph
;; <Forward Conditional>           c-forward-conditional
;; <Forward Statement>             c-end-of-statement
;; <Indent Expression>             c-indent-exp
;; <Indent Line or Region>         c-indent-line-or-region
;; <Macro Expand Region>           c-macro-expand
;; <Style...>      Prefix Command
;; <Toggle...>     Prefix Command
;; <Uncomment Region>              menu-function-18
;; <Up Conditional>                c-up-conditional
;; 
;; <Style...> <Guess Style from this Buffer>
;;                                 c-guess-buffer-no-install
;; <Style...> <Install the Last Guessed Style...>
;;                                 c-guess-install
;; <Style...> <Set Style...>       c-set-style
;; <Style...> <Show Current Style Name>
;;                                 menu-function-19
;; <Style...> <View the Last Guessed Style>
;;                                 c-guess-view
;; 
;; <Toggle...> <Auto newline>      c-toggle-auto-newline
;; <Toggle...> <Electric mode>     c-toggle-electric-state
;; <Toggle...> <Hungry delete>     c-toggle-hungry-state
;; <Toggle...> <Subword mode>      c-subword-mode
;; <Toggle...> <Syntactic indentation>
;;                                 c-toggle-syntactic-indentation
;; 
;; awk-mode-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               self-insert-command
;; ( .. )          c-electric-paren
;; *               self-insert-command
;; ,               c-electric-semi&comma
;; /               self-insert-command
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-M-a           c-awk-beginning-of-defun
;; C-M-e           c-awk-end-of-defun
;; M-a             c-beginning-of-statement
;; M-e             c-end-of-statement
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;;   (that binding is currently shadowed by another mode)
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;;   (that binding is currently shadowed by another mode)
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;;   (that binding is currently shadowed by another mode)
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; idl-mode-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               c-electric-pound
;; ( .. )          c-electric-paren
;; *               c-electric-star
;; ,               c-electric-semi&comma
;; /               c-electric-slash
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; c-mode-map
;; ----------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             c-electric-delete-forward
;; TAB             c-indent-line-or-region
;; ESC             Prefix Command
;; #               c-electric-pound
;; ( .. )          c-electric-paren
;; *               c-electric-star
;; ,               c-electric-semi&comma
;; /               c-electric-slash
;; :               c-electric-colon
;; ;               c-electric-semi&comma
;; {               c-electric-brace
;; }               c-electric-brace
;; DEL             c-electric-backspace
;; <nil>           Prefix Command
;; 
;; C-c C-e         c-macro-expand
;; 
;; C-c C-a         c-toggle-auto-newline
;; C-c C-b         c-submit-bug-report
;; C-c C-c         comment-region
;; C-c C-d         c-hungry-delete-forward
;; C-c C-k         c-toggle-comment-style
;; C-c C-l         c-toggle-electric-state
;; C-c C-n         c-forward-conditional
;; C-c C-o         c-set-offset
;; C-c C-p         c-backward-conditional
;; C-c C-q         c-indent-defun
;; C-c C-s         c-show-syntactic-information
;; C-c C-u         c-up-conditional
;; C-c C-w         c-subword-mode
;; C-c C-z         c-display-defun-name
;; C-c C-\         c-backslash-region
;; C-c .           c-set-style
;; C-c DEL         c-hungry-delete-backwards
;; C-c C-DEL       c-hungry-delete-backwards
;; C-c <C-backspace>               c-hungry-delete-backwards
;; C-c <C-delete>                  c-hungry-delete-forward
;; C-c <C-deletechar>              c-hungry-delete-forward
;; C-c <deletechar>                c-hungry-delete-forward
;; 
;; ESC C-a         c-beginning-of-defun
;; ESC C-e         c-end-of-defun
;; ESC C-j         c-indent-new-comment-line
;; ESC C-q         c-indent-exp
;; ESC a           c-beginning-of-statement
;; ESC e           c-end-of-statement
;; ESC j           c-indent-new-comment-line
;; ESC q           c-fill-paragraph
;; 
;; C-M-h           c-mark-function
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
