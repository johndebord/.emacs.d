(define-key term-raw-map (kbd "<C-c> <C-\\") 'term-quit-subjob)
(define-key term-raw-map (kbd "<C-c> <C-c>") 'term-interrupt-subjob)
(define-key term-raw-map (kbd "<C-c> <C-d>") 'term-send-eof)
(define-key term-raw-map (kbd "<C-c> <C-q>") 'term-continue-subjob)
(define-key term-raw-map (kbd "<C-c> <C-s>") 'term-stop-subjob)
(define-key term-raw-map (kbd "<jd:bks>") 'term-send-backspace)
(define-key term-raw-map (kbd "<jd:ret>") 'term-send-input)

(jd:provide-feature jd:term-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/term.elc
;; 
;; term-raw-escape-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; C-@             pop-global-mark
;; C-a             Prefix Command
;; C-b             list-buffers
;; C-c             term-send-raw
;; C-d             list-directory
;; C-e             eval-last-sexp
;; C-f             find-file
;; TAB             indent-rigidly
;; C-j             term-line-mode
;; C-k             term-char-mode
;; C-l             downcase-region
;; RET             Prefix Command
;; C-n             set-goal-column
;; C-o             delete-blank-lines
;; C-p             mark-page
;; C-q             term-pager-toggle
;; C-r             find-file-read-only
;; C-s             save-buffer
;; C-t             transpose-lines
;; C-u             universal-argument
;; C-v             scroll-up-command
;; C-w             write-file
;; C-x             term-send-raw
;; C-z             suspend-frame
;; ESC             Prefix Command
;; SPC             rectangle-mark-mode
;; $               set-selective-display
;; '               expand-abbrev
;; (               kmacro-start-macro
;; )               kmacro-end-macro
;; *               calc-dispatch
;; +               balance-windows
;; -               shrink-window-if-larger-than-buffer
;; .               set-fill-prefix
;; 0               delete-window
;; 1               delete-other-windows
;; 2               split-window-below
;; 3               split-window-right
;; 4               ctl-x-4-prefix
;; 5               ctl-x-5-prefix
;; 6               2C-command
;; 8               Prefix Command
;; ;               comment-set-column
;; <               scroll-left
;; =               what-cursor-position
;; >               scroll-right
;; X               Prefix Command
;; [               backward-page
;; ]               forward-page
;; ^               enlarge-window
;; `               next-error
;; a               Prefix Command
;; b               switch-to-buffer
;; d               dired
;; e               kmacro-end-and-call-macro
;; f               set-fill-column
;; h               mark-whole-buffer
;; i               insert-file
;; k               kill-buffer
;; l               count-lines-page
;; m               compose-mail
;; n               Prefix Command
;; o               other-window
;; q               kbd-macro-query
;; r               Prefix Command
;; s               save-some-buffers
;; u               undo
;; v               vc-prefix-map
;; z               repeat
;; {               shrink-window-horizontally
;; }               enlarge-window-horizontally
;; DEL             backward-kill-sentence
;; C-SPC           pop-global-mark
;; C-+             text-scale-adjust
;; C--             text-scale-adjust
;; C-0             text-scale-adjust
;; C-;             comment-line
;; C-=             text-scale-adjust
;; <C-left>        previous-buffer
;; <C-right>       next-buffer
;; <left>          previous-buffer
;; <nil>           Prefix Command
;; <right>         next-buffer
;; 
;; M-x             execute-extended-command
;; 
;; C-a C-l         gud-refresh
;; C-a C-w         gud-watch
;; 
;; C-k C-a         kmacro-add-counter
;; C-k C-c         kmacro-set-counter
;; C-k C-d         kmacro-delete-ring-head
;; C-k C-e         kmacro-edit-macro-repeat
;; C-k C-f         kmacro-set-format
;; C-k TAB         kmacro-insert-counter
;; C-k C-k         kmacro-end-or-call-macro-repeat
;; C-k C-l         kmacro-call-ring-2nd-repeat
;; C-k RET         kmacro-edit-macro
;; C-k C-n         kmacro-cycle-ring-next
;; C-k C-p         kmacro-cycle-ring-previous
;; C-k C-s         kmacro-start-macro
;; C-k C-t         kmacro-swap-ring
;; C-k C-v         kmacro-view-macro-repeat
;; C-k SPC         kmacro-step-edit-macro
;; C-k b           kmacro-bind-to-key
;; C-k e           edit-kbd-macro
;; C-k l           kmacro-edit-lossage
;; C-k n           kmacro-name-last-macro
;; C-k q           kbd-macro-query
;; C-k r           apply-macro-to-region-lines
;; C-k s           kmacro-start-macro
;; C-k x           kmacro-to-register
;; 
;; RET C-\         set-input-method
;; RET F           set-file-name-coding-system
;; RET X           set-next-selection-coding-system
;; RET c           universal-coding-system-argument
;; RET f           set-buffer-file-coding-system
;; RET k           set-keyboard-coding-system
;; RET l           set-language-environment
;; RET p           set-buffer-process-coding-system
;; RET r           revert-buffer-with-coding-system
;; RET t           set-terminal-coding-system
;; RET x           set-selection-coding-system
;; 
;; ESC ESC         repeat-complex-command
;; ESC :           repeat-complex-command
;; 
;; 4 C-f           find-file-other-window
;; 4 C-o           display-buffer
;; 4 .             xref-find-definitions-other-window
;; 4 0             kill-buffer-and-window
;; 4 a             add-change-log-entry-other-window
;; 4 b             switch-to-buffer-other-window
;; 4 c             clone-indirect-buffer-other-window
;; 4 d             dired-other-window
;; 4 f             find-file-other-window
;; 4 m             compose-mail-other-window
;; 4 r             find-file-read-only-other-window
;; 
;; 5 C-f           find-file-other-frame
;; 5 C-o           display-buffer-other-frame
;; 5 .             xref-find-definitions-other-frame
;; 5 0             delete-frame
;; 5 1             delete-other-frames
;; 5 2             make-frame-command
;; 5 b             switch-to-buffer-other-frame
;; 5 d             dired-other-frame
;; 5 f             find-file-other-frame
;; 5 m             compose-mail-other-frame
;; 5 o             other-frame
;; 5 r             find-file-read-only-other-frame
;; 
;; 6 2             2C-two-columns
;; 6 b             2C-associate-buffer
;; 6 s             2C-split
;; 6 <f2>          2C-two-columns
;; 
;; 8 RET           insert-char
;; 
;; X SPC           edebug-step-mode
;; X =             edebug-display-freq-count
;; X C             edebug-Continue-fast-mode
;; X G             edebug-Go-nonstop-mode
;; X Q             edebug-top-level-nonstop
;; X T             edebug-Trace-fast-mode
;; X W             edebug-toggle-save-windows
;; X X             edebug-set-global-break-condition
;; X a             abort-recursive-edit
;; X b             edebug-set-breakpoint
;; X c             edebug-continue-mode
;; X g             edebug-go-mode
;; X q             top-level
;; X t             edebug-trace-mode
;; X u             edebug-unset-breakpoint
;; X w             edebug-where
;; X x             edebug-set-conditional-breakpoint
;; 
;; a C-a           add-mode-abbrev
;; a '             expand-abbrev
;; a +             add-mode-abbrev
;; a -             inverse-add-global-abbrev
;; a e             expand-abbrev
;; a g             add-global-abbrev
;; a i             Prefix Command
;; a l             add-mode-abbrev
;; a n             expand-jump-to-next-slot
;; a p             expand-jump-to-previous-slot
;; 
;; n d             narrow-to-defun
;; n n             narrow-to-region
;; n p             narrow-to-page
;; n w             widen
;; 
;; r C-@           point-to-register
;; r ESC           Prefix Command
;; r SPC           point-to-register
;; r +             increment-register
;; r M             bookmark-set-no-overwrite
;; r N             rectangle-number-lines
;; r b             bookmark-jump
;; r c             clear-rectangle
;; r d             delete-rectangle
;; r f             frameset-to-register
;; r g             insert-register
;; r i             insert-register
;; r j             jump-to-register
;; r k             kill-rectangle
;; r l             bookmark-bmenu-list
;; r m             bookmark-set
;; r n             number-to-register
;; r o             open-rectangle
;; r r             copy-rectangle-to-register
;; r s             copy-to-register
;; r t             string-rectangle
;; r w             window-configuration-to-register
;; r x             copy-to-register
;; r y             yank-rectangle
;; r C-SPC         point-to-register
;; 
;; v +             vc-update
;; v =             vc-diff
;; v D             vc-root-diff
;; v G             vc-ignore
;; v I             vc-log-incoming
;; v L             vc-print-root-log
;; v O             vc-log-outgoing
;; v P             vc-push
;; v a             vc-update-change-log
;; v b             vc-switch-backend
;; v d             vc-dir
;; v g             vc-annotate
;; v h             vc-region-history
;; v i             vc-register
;; v l             vc-print-log
;; v m             vc-merge
;; v r             vc-retrieve-tag
;; v s             vc-create-tag
;; v u             vc-revert
;; v v             vc-next-action
;; v x             vc-delete-file
;; v ~             vc-revision-other-window
;; 
;; a i g           inverse-add-global-abbrev
;; a i l           inverse-add-mode-abbrev
;; 
;; r ESC w         copy-rectangle-as-kill
;; 
;; term-pager-break-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; RET             term-pager-line
;; C-u             universal-argument
;; C-x             Control-X-prefix
;; ESC             ESC-prefix
;; SPC             term-pager-page
;; <               term-pager-bob
;; >               term-pager-eob
;; ?               term-pager-help
;; D               term-pager-disable
;; b               term-pager-back-page
;; h               term-pager-help
;; q               term-pager-discard
;; DEL             term-pager-back-line
;; 
;; C-x C-@         pop-global-mark
;; C-x C-a         Prefix Command
;; C-x C-b         list-buffers
;; C-x C-c         save-buffers-kill-terminal
;; C-x C-d         list-directory
;; C-x C-e         eval-last-sexp
;; C-x C-f         find-file
;; C-x TAB         indent-rigidly
;; C-x C-k         kmacro-keymap
;; C-x C-l         downcase-region
;; C-x RET         Prefix Command
;; C-x C-n         set-goal-column
;; C-x C-o         delete-blank-lines
;; C-x C-p         mark-page
;; C-x C-q         read-only-mode
;; C-x C-r         find-file-read-only
;; C-x C-s         save-buffer
;; C-x C-t         transpose-lines
;; C-x C-u         upcase-region
;; C-x C-v         find-alternate-file
;; C-x C-w         write-file
;; C-x C-x         exchange-point-and-mark
;; C-x C-z         suspend-frame
;; C-x ESC         Prefix Command
;; C-x SPC         rectangle-mark-mode
;; C-x $           set-selective-display
;; C-x '           expand-abbrev
;; C-x (           kmacro-start-macro
;; C-x )           kmacro-end-macro
;; C-x *           calc-dispatch
;; C-x +           balance-windows
;; C-x -           shrink-window-if-larger-than-buffer
;; C-x .           set-fill-prefix
;; C-x 0           delete-window
;; C-x 1           delete-other-windows
;; C-x 2           split-window-below
;; C-x 3           split-window-right
;; C-x 4           ctl-x-4-prefix
;; C-x 5           ctl-x-5-prefix
;; C-x 6           2C-command
;; C-x 8           Prefix Command
;; C-x ;           comment-set-column
;; C-x <           scroll-left
;; C-x =           what-cursor-position
;; C-x >           scroll-right
;; C-x X           Prefix Command
;; C-x [           backward-page
;; C-x ]           forward-page
;; C-x ^           enlarge-window
;; C-x `           next-error
;; C-x a           Prefix Command
;; C-x b           switch-to-buffer
;; C-x d           dired
;; C-x e           kmacro-end-and-call-macro
;; C-x f           set-fill-column
;; C-x h           mark-whole-buffer
;; C-x i           insert-file
;; C-x k           kill-buffer
;; C-x l           count-lines-page
;; C-x m           compose-mail
;; C-x n           Prefix Command
;; C-x o           other-window
;; C-x q           kbd-macro-query
;; C-x r           Prefix Command
;; C-x s           save-some-buffers
;; C-x u           undo
;; C-x v           vc-prefix-map
;; C-x z           repeat
;; C-x {           shrink-window-horizontally
;; C-x }           enlarge-window-horizontally
;; C-x DEL         backward-kill-sentence
;; C-x C-SPC       pop-global-mark
;; C-x C-+         text-scale-adjust
;; C-x C--         text-scale-adjust
;; C-x C-0         text-scale-adjust
;; C-x C-;         comment-line
;; C-x C-=         text-scale-adjust
;; C-x <C-left>    previous-buffer
;; C-x <C-right>   next-buffer
;; C-x <left>      previous-buffer
;; C-x <right>     next-buffer
;; 
;; ESC 0 .. ESC 9  digit-argument
;; 
;; ESC C-@         mark-sexp
;; ESC C-a         beginning-of-defun
;; ESC C-b         backward-sexp
;; ESC C-c         exit-recursive-edit
;; ESC C-d         down-list
;; ESC C-e         end-of-defun
;; ESC C-f         forward-sexp
;; ESC C-h         mark-defun
;; ESC TAB         complete-symbol
;; ESC C-j         indent-new-comment-line
;; ESC C-k         kill-sexp
;; ESC C-l         reposition-window
;; ESC C-n         forward-list
;; ESC C-o         split-line
;; ESC C-p         backward-list
;; ESC C-r         isearch-backward-regexp
;; ESC C-s         isearch-forward-regexp
;; ESC C-t         transpose-sexps
;; ESC C-u         backward-up-list
;; ESC C-v         scroll-other-window
;; ESC C-w         append-next-kill
;; ESC ESC         Prefix Command
;; ESC C-\         indent-region
;; ESC SPC         just-one-space
;; ESC !           shell-command
;; ESC $           ispell-word
;; ESC %           query-replace
;; ESC &           async-shell-command
;; ESC '           abbrev-prefix-mark
;; ESC (           insert-parentheses
;; ESC )           move-past-close-and-reindent
;; ESC ,           xref-pop-marker-stack
;; ESC -           negative-argument
;; ESC .           xref-find-definitions
;; ESC /           dabbrev-expand
;; ESC :           eval-expression
;; ESC ;           comment-dwim
;; ESC <           beginning-of-buffer
;; ESC =           count-words-region
;; ESC >           end-of-buffer
;; ESC ?           xref-find-references
;; ESC @           mark-word
;; ESC \           delete-horizontal-space
;; ESC ^           delete-indentation
;; ESC `           tmm-menubar
;; ESC a           backward-sentence
;; ESC b           backward-word
;; ESC c           capitalize-word
;; ESC d           kill-word
;; ESC e           forward-sentence
;; ESC f           forward-word
;; ESC g           Prefix Command
;; ESC h           mark-paragraph
;; ESC i           tab-to-tab-stop
;; ESC j           indent-new-comment-line
;; ESC k           kill-sentence
;; ESC l           downcase-word
;; ESC m           back-to-indentation
;; ESC o           facemenu-keymap
;; ESC q           fill-paragraph
;; ESC r           move-to-window-line-top-bottom
;; ESC s           Prefix Command
;; ESC t           transpose-words
;; ESC u           upcase-word
;; ESC v           scroll-down-command
;; ESC w           kill-ring-save
;; ESC x           execute-extended-command
;; ESC y           yank-pop
;; ESC z           zap-to-char
;; ESC {           backward-paragraph
;; ESC |           shell-command-on-region
;; ESC }           forward-paragraph
;; ESC ~           not-modified
;; ESC DEL         backward-kill-word
;; ESC C-S-v       scroll-other-window-down
;; ESC C-SPC       mark-sexp
;; ESC C-%         query-replace-regexp
;; ESC C--         negative-argument
;; ESC C-.         xref-find-apropos
;; ESC C-/         dabbrev-completion
;; ESC C-0 .. ESC C-9              digit-argument
;; ESC <C-backspace>               backward-kill-sexp
;; ESC <C-delete>                  backward-kill-sexp
;; ESC <C-down>                    down-list
;; ESC <C-end>                     end-of-defun
;; ESC <C-home>                    beginning-of-defun
;; ESC <C-left>                    backward-sexp
;; ESC <C-right>                   forward-sexp
;; ESC <C-up>      backward-up-list
;; ESC <begin>     beginning-of-buffer-other-window
;; ESC <end>       end-of-buffer-other-window
;; ESC <f10>       toggle-frame-maximized
;; ESC <home>      beginning-of-buffer-other-window
;; ESC <left>      backward-word
;; ESC <next>      scroll-other-window
;; ESC <prior>     scroll-other-window-down
;; ESC <right>     forward-word
;; 
;; C-x C-a C-l     gud-refresh
;; C-x C-a C-w     gud-watch
;; 
;; C-x C-k C-a     kmacro-add-counter
;; C-x C-k C-c     kmacro-set-counter
;; C-x C-k C-d     kmacro-delete-ring-head
;; C-x C-k C-e     kmacro-edit-macro-repeat
;; C-x C-k C-f     kmacro-set-format
;; C-x C-k TAB     kmacro-insert-counter
;; C-x C-k C-k     kmacro-end-or-call-macro-repeat
;; C-x C-k C-l     kmacro-call-ring-2nd-repeat
;; C-x C-k RET     kmacro-edit-macro
;; C-x C-k C-n     kmacro-cycle-ring-next
;; C-x C-k C-p     kmacro-cycle-ring-previous
;; C-x C-k C-s     kmacro-start-macro
;; C-x C-k C-t     kmacro-swap-ring
;; C-x C-k C-v     kmacro-view-macro-repeat
;; C-x C-k SPC     kmacro-step-edit-macro
;; C-x C-k b       kmacro-bind-to-key
;; C-x C-k e       edit-kbd-macro
;; C-x C-k l       kmacro-edit-lossage
;; C-x C-k n       kmacro-name-last-macro
;; C-x C-k q       kbd-macro-query
;; C-x C-k r       apply-macro-to-region-lines
;; C-x C-k s       kmacro-start-macro
;; C-x C-k x       kmacro-to-register
;; 
;; C-x RET C-\     set-input-method
;; C-x RET F       set-file-name-coding-system
;; C-x RET X       set-next-selection-coding-system
;; C-x RET c       universal-coding-system-argument
;; C-x RET f       set-buffer-file-coding-system
;; C-x RET k       set-keyboard-coding-system
;; C-x RET l       set-language-environment
;; C-x RET p       set-buffer-process-coding-system
;; C-x RET r       revert-buffer-with-coding-system
;; C-x RET t       set-terminal-coding-system
;; C-x RET x       set-selection-coding-system
;; 
;; C-x ESC ESC     repeat-complex-command
;; C-x ESC :       repeat-complex-command
;; 
;; C-x 4 C-f       find-file-other-window
;; C-x 4 C-o       display-buffer
;; C-x 4 .         xref-find-definitions-other-window
;; C-x 4 0         kill-buffer-and-window
;; C-x 4 a         add-change-log-entry-other-window
;; C-x 4 b         switch-to-buffer-other-window
;; C-x 4 c         clone-indirect-buffer-other-window
;; C-x 4 d         dired-other-window
;; C-x 4 f         find-file-other-window
;; C-x 4 m         compose-mail-other-window
;; C-x 4 r         find-file-read-only-other-window
;; 
;; C-x 5 C-f       find-file-other-frame
;; C-x 5 C-o       display-buffer-other-frame
;; C-x 5 .         xref-find-definitions-other-frame
;; C-x 5 0         delete-frame
;; C-x 5 1         delete-other-frames
;; C-x 5 2         make-frame-command
;; C-x 5 b         switch-to-buffer-other-frame
;; C-x 5 d         dired-other-frame
;; C-x 5 f         find-file-other-frame
;; C-x 5 m         compose-mail-other-frame
;; C-x 5 o         other-frame
;; C-x 5 r         find-file-read-only-other-frame
;; 
;; C-x 6 2         2C-two-columns
;; C-x 6 b         2C-associate-buffer
;; C-x 6 s         2C-split
;; C-x 6 <f2>      2C-two-columns
;; 
;; C-x 8 RET       insert-char
;; 
;; C-x X SPC       edebug-step-mode
;; C-x X =         edebug-display-freq-count
;; C-x X C         edebug-Continue-fast-mode
;; C-x X G         edebug-Go-nonstop-mode
;; C-x X Q         edebug-top-level-nonstop
;; C-x X T         edebug-Trace-fast-mode
;; C-x X W         edebug-toggle-save-windows
;; C-x X X         edebug-set-global-break-condition
;; C-x X a         abort-recursive-edit
;; C-x X b         edebug-set-breakpoint
;; C-x X c         edebug-continue-mode
;; C-x X g         edebug-go-mode
;; C-x X q         top-level
;; C-x X t         edebug-trace-mode
;; C-x X u         edebug-unset-breakpoint
;; C-x X w         edebug-where
;; C-x X x         edebug-set-conditional-breakpoint
;; 
;; C-x a C-a       add-mode-abbrev
;; C-x a '         expand-abbrev
;; C-x a +         add-mode-abbrev
;; C-x a -         inverse-add-global-abbrev
;; C-x a e         expand-abbrev
;; C-x a g         add-global-abbrev
;; C-x a i         Prefix Command
;; C-x a l         add-mode-abbrev
;; C-x a n         expand-jump-to-next-slot
;; C-x a p         expand-jump-to-previous-slot
;; 
;; C-x n d         narrow-to-defun
;; C-x n n         narrow-to-region
;; C-x n p         narrow-to-page
;; C-x n w         widen
;; 
;; C-x r C-@       point-to-register
;; C-x r ESC       Prefix Command
;; C-x r SPC       point-to-register
;; C-x r +         increment-register
;; C-x r M         bookmark-set-no-overwrite
;; C-x r N         rectangle-number-lines
;; C-x r b         bookmark-jump
;; C-x r c         clear-rectangle
;; C-x r d         delete-rectangle
;; C-x r f         frameset-to-register
;; C-x r g         insert-register
;; C-x r i         insert-register
;; C-x r j         jump-to-register
;; C-x r k         kill-rectangle
;; C-x r l         bookmark-bmenu-list
;; C-x r m         bookmark-set
;; C-x r n         number-to-register
;; C-x r o         open-rectangle
;; C-x r r         copy-rectangle-to-register
;; C-x r s         copy-to-register
;; C-x r t         string-rectangle
;; C-x r w         window-configuration-to-register
;; C-x r x         copy-to-register
;; C-x r y         yank-rectangle
;; C-x r C-SPC     point-to-register
;; 
;; C-x v +         vc-update
;; C-x v =         vc-diff
;; C-x v D         vc-root-diff
;; C-x v G         vc-ignore
;; C-x v I         vc-log-incoming
;; C-x v L         vc-print-root-log
;; C-x v O         vc-log-outgoing
;; C-x v P         vc-push
;; C-x v a         vc-update-change-log
;; C-x v b         vc-switch-backend
;; C-x v d         vc-dir
;; C-x v g         vc-annotate
;; C-x v h         vc-region-history
;; C-x v i         vc-register
;; C-x v l         vc-print-log
;; C-x v m         vc-merge
;; C-x v r         vc-retrieve-tag
;; C-x v s         vc-create-tag
;; C-x v u         vc-revert
;; C-x v v         vc-next-action
;; C-x v x         vc-delete-file
;; C-x v ~         vc-revision-other-window
;; 
;; ESC ESC ESC     keyboard-escape-quit
;; ESC ESC :       eval-expression
;; 
;; ESC g TAB       move-to-column
;; ESC g ESC       Prefix Command
;; ESC g c         goto-char
;; ESC g g         goto-line
;; ESC g n         next-error
;; ESC g p         previous-error
;; 
;; ESC o ESC       Prefix Command
;; ESC o b         facemenu-set-bold
;; ESC o d         facemenu-set-default
;; ESC o i         facemenu-set-italic
;; ESC o l         facemenu-set-bold-italic
;; ESC o o         facemenu-set-face
;; ESC o u         facemenu-set-underline
;; 
;; ESC s ESC       Prefix Command
;; ESC s .         isearch-forward-symbol-at-point
;; ESC s _         isearch-forward-symbol
;; ESC s h         Prefix Command
;; ESC s o         occur
;; ESC s w         isearch-forward-word
;; 
;; C-x a i g       inverse-add-global-abbrev
;; C-x a i l       inverse-add-mode-abbrev
;; 
;; C-x r ESC w     copy-rectangle-as-kill
;; 
;; ESC g ESC g     goto-line
;; ESC g ESC n     next-error
;; ESC g ESC p     previous-error
;; 
;; ESC o ESC S     center-paragraph
;; ESC o ESC o     font-lock-fontify-block
;; ESC o ESC s     center-line
;; 
;; ESC s h .       highlight-symbol-at-point
;; ESC s h f       hi-lock-find-patterns
;; ESC s h l       highlight-lines-matching-regexp
;; ESC s h p       highlight-phrase
;; ESC s h r       highlight-regexp
;; ESC s h u       unhighlight-regexp
;; ESC s h w       hi-lock-write-interactive-patterns
;; 
;; ESC s ESC w     eww-search-words
;; 
;; term-signals-menu
;; -----------------
;; key             binding
;; ---             -------
;; 
;; <BREAK>         term-interrupt-subjob
;; <CONT>          term-continue-subjob
;; <EOF>           term-send-eof
;; <KILL>          term-kill-subjob
;; <QUIT>          term-quit-subjob
;; <STOP>          term-stop-subjob
;; 
;; term-raw-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; C-@ .. C-w      term-send-raw
;; C-y .. C-z      term-send-raw
;; C-\ .. DEL      term-send-raw
;; 
;; C-x             Prefix Command
;; ESC             Prefix Command
;; <C-down>        term-send-ctrl-down
;; <C-left>        term-send-ctrl-left
;; <C-right>       term-send-ctrl-right
;; <C-up>          term-send-ctrl-up
;; <S-insert>      term-paste
;; <S-next>        scroll-up
;; <S-prior>       scroll-down
;; <backspace>     term-send-backspace
;; <delete>        term-send-del
;; <deletechar>    term-send-del
;; <down>          term-send-down
;; <end>           term-send-end
;; <home>          term-send-home
;; <insert>        term-send-insert
;; <left>          term-send-left
;; <mouse-2>       term-mouse-paste
;; <next>          term-send-next
;; <prior>         term-send-prior
;; <remap>         Prefix Command
;; <right>         term-send-right
;; <up>            term-send-up
;; <xterm-paste>   term--xterm-paste
;; 
;; C-x C-@         pop-global-mark
;; C-x C-a         Prefix Command
;; C-x C-b         list-buffers
;; C-x C-c         term-send-raw
;; C-x C-d         list-directory
;; C-x C-e         eval-last-sexp
;; C-x C-f         find-file
;; C-x TAB         indent-rigidly
;; C-x C-j         term-line-mode
;; C-x C-k         term-char-mode
;; C-x C-l         downcase-region
;; C-x RET         Prefix Command
;; C-x C-n         set-goal-column
;; C-x C-o         delete-blank-lines
;; C-x C-p         mark-page
;; C-x C-q         term-pager-toggle
;; C-x C-r         find-file-read-only
;; C-x C-s         save-buffer
;; C-x C-t         transpose-lines
;; C-x C-u         universal-argument
;; C-x C-v         scroll-up-command
;; C-x C-w         write-file
;; C-x C-x         term-send-raw
;; C-x C-z         suspend-frame
;; C-x ESC         Prefix Command
;; C-x SPC         rectangle-mark-mode
;; C-x $           set-selective-display
;; C-x '           expand-abbrev
;; C-x (           kmacro-start-macro
;; C-x )           kmacro-end-macro
;; C-x *           calc-dispatch
;; C-x +           balance-windows
;; C-x -           shrink-window-if-larger-than-buffer
;; C-x .           set-fill-prefix
;; C-x 0           delete-window
;; C-x 1           delete-other-windows
;; C-x 2           split-window-below
;; C-x 3           split-window-right
;; C-x 4           ctl-x-4-prefix
;; C-x 5           ctl-x-5-prefix
;; C-x 6           2C-command
;; C-x 8           Prefix Command
;; C-x ;           comment-set-column
;; C-x <           scroll-left
;; C-x =           what-cursor-position
;; C-x >           scroll-right
;; C-x X           Prefix Command
;; C-x [           backward-page
;; C-x ]           forward-page
;; C-x ^           enlarge-window
;; C-x `           next-error
;; C-x a           Prefix Command
;; C-x b           switch-to-buffer
;; C-x d           dired
;; C-x e           kmacro-end-and-call-macro
;; C-x f           set-fill-column
;; C-x h           mark-whole-buffer
;; C-x i           insert-file
;; C-x k           kill-buffer
;; C-x l           count-lines-page
;; C-x m           compose-mail
;; C-x n           Prefix Command
;; C-x o           other-window
;; C-x q           kbd-macro-query
;; C-x r           Prefix Command
;; C-x s           save-some-buffers
;; C-x u           undo
;; C-x v           vc-prefix-map
;; C-x z           repeat
;; C-x {           shrink-window-horizontally
;; C-x }           enlarge-window-horizontally
;; C-x DEL         backward-kill-sentence
;; C-x C-SPC       pop-global-mark
;; C-x C-+         text-scale-adjust
;; C-x C--         text-scale-adjust
;; C-x C-0         text-scale-adjust
;; C-x C-;         comment-line
;; C-x C-=         text-scale-adjust
;; C-x <C-left>    previous-buffer
;; C-x <C-right>   next-buffer
;; C-x <left>      previous-buffer
;; C-x <nil>       Prefix Command
;; C-x <right>     next-buffer
;; 
;; ESC C-@ .. ESC N                term-send-raw-meta
;; ESC P .. ESC Z                  term-send-raw-meta
;; ESC \ .. ESC DEL                term-send-raw-meta
;; 
;; <remap> <self-insert-command>   term-send-raw
;; 
;; C-x M-x         execute-extended-command
;; 
;; C-x C-a C-l     gud-refresh
;; C-x C-a C-w     gud-watch
;; 
;; C-x C-k C-a     kmacro-add-counter
;; C-x C-k C-c     kmacro-set-counter
;; C-x C-k C-d     kmacro-delete-ring-head
;; C-x C-k C-e     kmacro-edit-macro-repeat
;; C-x C-k C-f     kmacro-set-format
;; C-x C-k TAB     kmacro-insert-counter
;; C-x C-k C-k     kmacro-end-or-call-macro-repeat
;; C-x C-k C-l     kmacro-call-ring-2nd-repeat
;; C-x C-k RET     kmacro-edit-macro
;; C-x C-k C-n     kmacro-cycle-ring-next
;; C-x C-k C-p     kmacro-cycle-ring-previous
;; C-x C-k C-s     kmacro-start-macro
;; C-x C-k C-t     kmacro-swap-ring
;; C-x C-k C-v     kmacro-view-macro-repeat
;; C-x C-k SPC     kmacro-step-edit-macro
;; C-x C-k b       kmacro-bind-to-key
;; C-x C-k e       edit-kbd-macro
;; C-x C-k l       kmacro-edit-lossage
;; C-x C-k n       kmacro-name-last-macro
;; C-x C-k q       kbd-macro-query
;; C-x C-k r       apply-macro-to-region-lines
;; C-x C-k s       kmacro-start-macro
;; C-x C-k x       kmacro-to-register
;; 
;; C-x RET C-\     set-input-method
;; C-x RET F       set-file-name-coding-system
;; C-x RET X       set-next-selection-coding-system
;; C-x RET c       universal-coding-system-argument
;; C-x RET f       set-buffer-file-coding-system
;; C-x RET k       set-keyboard-coding-system
;; C-x RET l       set-language-environment
;; C-x RET p       set-buffer-process-coding-system
;; C-x RET r       revert-buffer-with-coding-system
;; C-x RET t       set-terminal-coding-system
;; C-x RET x       set-selection-coding-system
;; 
;; C-x ESC ESC     repeat-complex-command
;; C-x ESC :       repeat-complex-command
;; 
;; C-x 4 C-f       find-file-other-window
;; C-x 4 C-o       display-buffer
;; C-x 4 .         xref-find-definitions-other-window
;; C-x 4 0         kill-buffer-and-window
;; C-x 4 a         add-change-log-entry-other-window
;; C-x 4 b         switch-to-buffer-other-window
;; C-x 4 c         clone-indirect-buffer-other-window
;; C-x 4 d         dired-other-window
;; C-x 4 f         find-file-other-window
;; C-x 4 m         compose-mail-other-window
;; C-x 4 r         find-file-read-only-other-window
;; 
;; C-x 5 C-f       find-file-other-frame
;; C-x 5 C-o       display-buffer-other-frame
;; C-x 5 .         xref-find-definitions-other-frame
;; C-x 5 0         delete-frame
;; C-x 5 1         delete-other-frames
;; C-x 5 2         make-frame-command
;; C-x 5 b         switch-to-buffer-other-frame
;; C-x 5 d         dired-other-frame
;; C-x 5 f         find-file-other-frame
;; C-x 5 m         compose-mail-other-frame
;; C-x 5 o         other-frame
;; C-x 5 r         find-file-read-only-other-frame
;; 
;; C-x 6 2         2C-two-columns
;; C-x 6 b         2C-associate-buffer
;; C-x 6 s         2C-split
;; C-x 6 <f2>      2C-two-columns
;; 
;; C-x 8 RET       insert-char
;; 
;; C-x X SPC       edebug-step-mode
;; C-x X =         edebug-display-freq-count
;; C-x X C         edebug-Continue-fast-mode
;; C-x X G         edebug-Go-nonstop-mode
;; C-x X Q         edebug-top-level-nonstop
;; C-x X T         edebug-Trace-fast-mode
;; C-x X W         edebug-toggle-save-windows
;; C-x X X         edebug-set-global-break-condition
;; C-x X a         abort-recursive-edit
;; C-x X b         edebug-set-breakpoint
;; C-x X c         edebug-continue-mode
;; C-x X g         edebug-go-mode
;; C-x X q         top-level
;; C-x X t         edebug-trace-mode
;; C-x X u         edebug-unset-breakpoint
;; C-x X w         edebug-where
;; C-x X x         edebug-set-conditional-breakpoint
;; 
;; C-x a C-a       add-mode-abbrev
;; C-x a '         expand-abbrev
;; C-x a +         add-mode-abbrev
;; C-x a -         inverse-add-global-abbrev
;; C-x a e         expand-abbrev
;; C-x a g         add-global-abbrev
;; C-x a i         Prefix Command
;; C-x a l         add-mode-abbrev
;; C-x a n         expand-jump-to-next-slot
;; C-x a p         expand-jump-to-previous-slot
;; 
;; C-x n d         narrow-to-defun
;; C-x n n         narrow-to-region
;; C-x n p         narrow-to-page
;; C-x n w         widen
;; 
;; C-x r C-@       point-to-register
;; C-x r ESC       Prefix Command
;; C-x r SPC       point-to-register
;; C-x r +         increment-register
;; C-x r M         bookmark-set-no-overwrite
;; C-x r N         rectangle-number-lines
;; C-x r b         bookmark-jump
;; C-x r c         clear-rectangle
;; C-x r d         delete-rectangle
;; C-x r f         frameset-to-register
;; C-x r g         insert-register
;; C-x r i         insert-register
;; C-x r j         jump-to-register
;; C-x r k         kill-rectangle
;; C-x r l         bookmark-bmenu-list
;; C-x r m         bookmark-set
;; C-x r n         number-to-register
;; C-x r o         open-rectangle
;; C-x r r         copy-rectangle-to-register
;; C-x r s         copy-to-register
;; C-x r t         string-rectangle
;; C-x r w         window-configuration-to-register
;; C-x r x         copy-to-register
;; C-x r y         yank-rectangle
;; C-x r C-SPC     point-to-register
;; 
;; C-x v +         vc-update
;; C-x v =         vc-diff
;; C-x v D         vc-root-diff
;; C-x v G         vc-ignore
;; C-x v I         vc-log-incoming
;; C-x v L         vc-print-root-log
;; C-x v O         vc-log-outgoing
;; C-x v P         vc-push
;; C-x v a         vc-update-change-log
;; C-x v b         vc-switch-backend
;; C-x v d         vc-dir
;; C-x v g         vc-annotate
;; C-x v h         vc-region-history
;; C-x v i         vc-register
;; C-x v l         vc-print-log
;; C-x v m         vc-merge
;; C-x v r         vc-retrieve-tag
;; C-x v s         vc-create-tag
;; C-x v u         vc-revert
;; C-x v v         vc-next-action
;; C-x v x         vc-delete-file
;; C-x v ~         vc-revision-other-window
;; 
;; C-x a i g       inverse-add-global-abbrev
;; C-x a i l       inverse-add-mode-abbrev
;; 
;; C-x r ESC w     copy-rectangle-as-kill
;; 
;; term-mode-map
;; -------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             term-delchar-or-maybe-eof
;; RET             term-send-input
;; ESC             Prefix Command
;; <nil>           Prefix Command
;; 
;; C-c C-a         term-bol
;; C-c C-c         term-interrupt-subjob
;; C-c C-d         term-send-eof
;; C-c C-e         term-show-maximum-output
;; C-c C-j         term-line-mode
;; C-c C-k         term-char-mode
;; C-c C-l         term-dynamic-list-input-ring
;; C-c RET         term-copy-old-input
;; C-c C-n         term-next-prompt
;; C-c C-o         term-kill-output
;; C-c C-p         term-previous-prompt
;; C-c C-q         term-pager-toggle
;; C-c C-r         term-show-output
;; C-c C-u         term-kill-input
;; C-c C-w         backward-kill-word
;; C-c C-z         term-stop-subjob
;; C-c C-\         term-quit-subjob
;; 
;; A-M-r           term-previous-matching-input-from-input
;; A-M-s           term-next-matching-input-from-input
;; 
;; ESC C-l         term-show-output
;; ESC n           term-next-input
;; ESC p           term-previous-input
;; ESC r           term-previous-matching-input
;; ESC s           term-next-matching-input
;; 
;; term-terminal-menu
;; ------------------
;; key             binding
;; ---             -------
;; 
;; <Character mode>                term-char-mode
;; <Line mode>                     term-line-mode
;; <Paging>        term-pager-toggle
;; 
;; term-pager-menu
;; ---------------
;; key             binding
;; ---             -------
;; 
;; <1 line backwards>              term-pager-back-line
;; <1 line forwards>               term-pager-line
;; <1 page backwards>              term-pager-back-page
;; <1 page forwards>               term-pager-page
;; <Disable paging>                term-pager-toggle
;; <Discard remaining output>      term-pager-discard
;; <Goto to beginning>             term-pager-bob
;; <Goto to end>                   term-pager-eob
;; <Help>          term-pager-help
;; 
;; [back]

