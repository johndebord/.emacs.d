(provide 'jd:edebug-kb)

;; File: /usr/local/share/emacs/26.3.50/lisp/emacs-lisp/edebug.elc
;; 
;; global-edebug-map
;; -----------------
;; key             binding
;; ---             -------
;; 
;; SPC             edebug-step-mode
;; =               edebug-display-freq-count
;; C               edebug-Continue-fast-mode
;; G               edebug-Go-nonstop-mode
;; Q               edebug-top-level-nonstop
;; T               edebug-Trace-fast-mode
;; W               edebug-toggle-save-windows
;; X               edebug-set-global-break-condition
;; a               abort-recursive-edit
;; b               edebug-set-breakpoint
;; c               edebug-continue-mode
;; g               edebug-go-mode
;; q               top-level
;; t               edebug-trace-mode
;; u               edebug-unset-breakpoint
;; w               edebug-where
;; x               edebug-set-conditional-breakpoint
;; 
;; edebug-menu
;; -----------
;; key             binding
;; ---             -------
;; 
;; <Abort>         abort-recursive-edit
;; <Breaks>        Prefix Command
;; <Continue>      edebug-continue-mode
;; <Continue Fast>                 edebug-Continue-fast-mode
;; <Eval>          Prefix Command
;; <Go>            edebug-go-mode
;; <Go Nonstop>    edebug-Go-nonstop-mode
;; <Help>          edebug-help
;; <Jumps>         Prefix Command
;; <Next>          edebug-next-mode
;; <Options>       Prefix Command
;; <Quit Nonstop>  edebug-top-level-nonstop
;; <Quit to Top Level>             top-level
;; <Step>          edebug-step-mode
;; <Stop>          edebug-stop
;; <Trace>         edebug-trace-mode
;; <Trace Fast>    edebug-Trace-fast-mode
;; <Views>         Prefix Command
;; 
;; <Jumps> <Forward Sexp>          edebug-forward-sexp
;; <Jumps> <Goto Here>             edebug-goto-here
;; <Jumps> <Step In>               edebug-step-in
;; <Jumps> <Step Out>              edebug-step-out
;; 
;; <Breaks> <Set Breakpoint>       edebug-set-breakpoint
;; <Breaks> <Set Conditional Breakpoint>
;;                                 edebug-set-conditional-breakpoint
;; <Breaks> <Set Global Break Condition>
;;                                 edebug-set-global-break-condition
;; <Breaks> <Show Next Breakpoint>
;;                                 edebug-next-breakpoint
;; <Breaks> <Unset Breakpoint>     edebug-unset-breakpoint
;; 
;; <Views> <Bounce to Current Point>
;;                                 edebug-bounce-point
;; <Views> <Display Freq Count>    edebug-display-freq-count
;; <Views> <Previous Result>       edebug-previous-result
;; <Views> <Show Backtrace>        edebug-backtrace
;; <Views> <View Outside Windows>  edebug-view-outside
;; <Views> <Where am I?>           edebug-where
;; 
;; <Eval> <Expression>             edebug-eval-expression
;; <Eval> <Last Sexp>              edebug-eval-last-sexp
;; <Eval> <Visit Eval List>        edebug-visit-eval-list
;; 
;; <Options> <Edebug All Defs>     edebug-all-defs
;; <Options> <Edebug All Forms>    edebug-all-forms
;; <Options> <Save Point>          menu-function-23
;; <Options> <Save Windows>        edebug-toggle-save-windows
;; <Options> <Test Coverage>       menu-function-22
;; <Options> <Tracing>             menu-function-21
;; 
;; edebug-eval-mode-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-j             edebug-eval-print-last-sexp
;; C-x             Prefix Command
;; ESC             Prefix Command
;; DEL             backward-delete-char-untabify
;; 
;; C-x C-e         edebug-eval-last-sexp
;; 
;; C-c C-d         edebug-delete-eval-item
;; C-c C-u         edebug-update-eval-list
;; C-c C-w         edebug-where
;; 
;; ESC TAB         completion-at-point
;; ESC C-q         indent-pp-sexp
;; ESC C-x         eval-defun
;; 
;; ESC C-q         indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; edebug-mode-map
;; ---------------
;; key             binding
;; ---             -------
;; 
;; B               edebug-backtrace
;; C               edebug-Continue-fast-mode
;; S               edebug-stop
;; T               edebug-Trace-fast-mode
;; X               edebug-set-global-break-condition
;; b               edebug-set-breakpoint
;; c               edebug-continue-mode
;; i               edebug-step-in
;; n               edebug-next-breakpoint
;; o               edebug-step-out
;; q               top-level
;; s               edebug-step-mode
;; t               edebug-trace-mode
;; u               edebug-unset-breakpoint
;; x               edebug-set-conditional-breakpoint
