(define-key gud-minibuffer-local-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key gud-minibuffer-local-map (kbd "<C-M-i>") 'previous-history-element)
(define-key gud-minibuffer-local-map (kbd "<C-M-k>") 'next-history-element)
(define-key gud-minibuffer-local-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key gud-minibuffer-local-map (kbd "<jd:tab>") 'comint-dynamic-complete-filename)
(define-key gud-minibuffer-local-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(define-key gud-mode-map (kbd "<M-u>") 'beginning-of-line)
(define-key gud-mode-map (kbd "<C-M-i>") 'jd:comint-previous-input)
(define-key gud-mode-map (kbd "<C-M-k>") 'jd:comint-next-input)
(define-key gud-mode-map (kbd "<C-c> <C-d>") 'comint-send-eof)
(define-key gud-mode-map (kbd "<C-c> <C-l>") 'jd:gud-clear-buffer)
(define-key gud-mode-map (kbd "<jd:ret>") 'comint-send-input)

(jd:provide-feature jd:gud-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/progmodes/gud.elc
;; 
;; gud-minibuffer-local-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; C-g             abort-recursive-edit
;; TAB             comint-dynamic-complete-filename
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
;; gud-menu-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; <break>         gud-break
;; <cont>          gud-cont
;; <displays>      Prefix Command
;; <down>          gud-down
;; <finish>        gud-finish
;; <frames>        Prefix Command
;; <go>            gud-go
;; <help>          gud-goto-info
;; <mi>            Prefix Command
;; <next>          gud-next
;; <nexti>         gud-nexti
;; <pp>            gud-pp
;; <print>         gud-print
;; <print*>        gud-pstar
;; <refresh>       gud-refresh
;; <remove>        gud-remove
;; <run>           gud-run
;; <step>          gud-step
;; <stepi>         gud-stepi
;; <stop>          gud-stop-subjob
;; <tbreak>        gud-tbreak
;; <tooltips>      gud-tooltip-mode
;; <until>         gud-until
;; <up>            gud-up
;; <watch>         gud-watch
;; 
;; <mi> <all-threads>              ??
;; <mi> <current-thread>           ??
;; <mi> <gdb-customize>            ??
;; <mi> <gdb-customize-reasons>    ??
;; <mi> <gdb-many-windows>         gdb-many-windows
;; <mi> <gdb-restore-windows>      gdb-restore-windows
;; <mi> <gdb-switch-when-another-stopped>
;;                                 gdb-toggle-switch-when-another-stopped
;; 
;; <frames> <breakpoints>          gdb-frame-breakpoints-buffer
;; <frames> <disassembly>          gdb-frame-disassembly-buffer
;; <frames> <frames>               gdb-frame-stack-buffer
;; <frames> <gdb>                  gdb-frame-gdb-buffer
;; <frames> <inferior>             gdb-frame-io-buffer
;; <frames> <locals>               gdb-frame-locals-buffer
;; <frames> <memory>               gdb-frame-memory-buffer
;; <frames> <registers>            gdb-frame-registers-buffer
;; <frames> <threads>              gdb-frame-threads-buffer
;; 
;; <displays> <breakpoints>        gdb-display-breakpoints-buffer
;; <displays> <disassembly>        gdb-display-disassembly-buffer
;; <displays> <frames>             gdb-display-stack-buffer
;; <displays> <gdb>                gdb-display-gdb-buffer
;; <displays> <inferior>           gdb-display-io-buffer
;; <displays> <locals>             gdb-display-locals-buffer
;; <displays> <memory>             gdb-display-memory-buffer
;; <displays> <registers>          gdb-display-registers-buffer
;; <displays> <threads>            gdb-display-threads-buffer
;; 
;; gud-tool-bar-map
;; ----------------
;; key             binding
;; ---             -------
;; 
;; <all-threads>   gdb-control-all-threads
;; <break>         gud-break
;; <cont>          gud-cont
;; <current-thread>                gdb-control-current-thread
;; <down>          gud-down
;; <finish>        gud-finish
;; <go>            gud-go
;; <help>          gud-goto-info
;; <next>          gud-next
;; <nexti>         gud-nexti
;; <pp>            gud-pp
;; <print>         gud-print
;; <print*>        gud-pstar
;; <remove>        gud-remove
;; <run>           gud-run
;; <step>          gud-step
;; <stepi>         gud-stepi
;; <stop>          gud-stop-subjob
;; <until>         gud-until
;; <up>            gud-up
;; <watch>         gud-watch
;; 
;; gdb-script-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; gud-minor-mode-map
;; ------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; <left-fringe>   Prefix Command
;; <left-margin>   Prefix Command
;; 
;; <left-fringe> <C-drag-mouse-1>  gdb-mouse-jump
;; <left-fringe> <C-mouse-1>       gdb-mouse-toggle-breakpoint-fringe
;; <left-fringe> <C-mouse-3>       gdb-mouse-jump
;; <left-fringe> <drag-mouse-1>    gdb-mouse-until
;; <left-fringe> <mouse-1>         gdb-mouse-set-clear-breakpoint
;; <left-fringe> <mouse-3>         gdb-mouse-until
;; 
;; <left-margin> <C-drag-mouse-1>  gdb-mouse-jump
;; <left-margin> <C-mouse-1>       gdb-mouse-toggle-breakpoint-margin
;; <left-margin> <C-mouse-3>       gdb-mouse-jump
;; <left-margin> <drag-mouse-1>    gdb-mouse-until
;; <left-margin> <mouse-1>         gdb-mouse-set-clear-breakpoint
;; <left-margin> <mouse-3>         gdb-mouse-until
;; 
;; C-c C-w         gud-watch
;; 
;; gud-speedbar-key-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; RET             speedbar-edit-line
;; SPC             speedbar-toggle-line-expansion
;; D               gdb-var-delete
;; Q               delete-frame
;; b               ??
;; e               speedbar-edit-line
;; f               ??
;; g               speedbar-refresh
;; j               speedbar-edit-line
;; n               speedbar-next
;; p               gud-pp
;; q               dframe-close-frame
;; r               ??
;; t               speedbar-toggle-updates
;; <C-down-mouse-1>                dframe-hack-buffer-menu
;; <S-mouse-2>                     dframe-power-click
;; <down-mouse-3>                  dframe-popup-kludge
;; <follow-link>                   mouse-face
;; <mode-line>                     Prefix Command
;; <mouse-2>       dframe-click
;; <mouse-movement>                dframe-track-mouse
;; <nil>           Prefix Command
;; <remap>         Prefix Command
;; 
;; <mode-line> <down-mouse-1>      dframe-popup-kludge
;; <mode-line> <mouse-2>           dframe-mouse-hscroll
;; 
;; C-M-n           speedbar-forward-list
;; C-M-p           speedbar-backward-list
;; M-n             speedbar-restricted-next
;; M-p             speedbar-restricted-prev
;; 
;; gud-mode-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             comint-delchar-or-maybe-eof
;; TAB             completion-at-point
;; RET             comint-send-input
;; ESC             Prefix Command
;; <C-down>        comint-next-input
;; <C-up>          comint-previous-input
;; <delete>        delete-forward-char
;; <kp-delete>     delete-forward-char
;; <mouse-2>       comint-insert-input
;; <remap>         Prefix Command
;; 
;; <remap> <comint-delchar-or-maybe-eof>
;;                                 gdb-delchar-or-quit
;; 
;; C-c C-b         gud-break
;; C-c C-d         gud-remove
;; C-c C-f         gud-finish
;; C-c TAB         gud-stepi
;; C-c C-j         gud-jump
;; C-c C-l         gud-refresh
;; C-c C-n         gud-next
;; C-c C-p         gud-print
;; C-c C-r         gud-cont
;; C-c C-s         gud-step
;; C-c C-t         gud-tbreak
;; C-c C-u         gud-until
;; C-c <           gud-up
;; C-c >           gud-down
;; 
;; C-c C-a         comint-bol-or-process-mark
;; C-c C-c         comint-interrupt-subjob
;; C-c C-d         comint-send-eof
;;   (that binding is currently shadowed by another mode)
;; C-c C-e         comint-show-maximum-output
;; C-c C-l         comint-dynamic-list-input-ring
;;   (that binding is currently shadowed by another mode)
;; C-c RET         comint-copy-old-input
;; C-c C-n         comint-next-prompt
;;   (that binding is currently shadowed by another mode)
;; C-c C-o         comint-delete-output
;; C-c C-p         comint-previous-prompt
;;   (that binding is currently shadowed by another mode)
;; C-c C-r         comint-show-output
;;   (that binding is currently shadowed by another mode)
;; C-c C-s         comint-write-output
;;   (that binding is currently shadowed by another mode)
;; C-c C-u         comint-kill-input
;;   (that binding is currently shadowed by another mode)
;; C-c C-w         backward-kill-word
;; C-c C-x         comint-get-next-from-history
;; C-c C-z         comint-stop-subjob
;; C-c C-\         comint-quit-subjob
;; C-c SPC         comint-accumulate
;; C-c .           comint-insert-previous-argument
;; C-c <nil>       Prefix Command
;; 
;; ESC C-l         comint-show-output
;; ESC n           comint-next-input
;; ESC p           comint-previous-input
;; ESC r           comint-history-isearch-backward-regexp
;; 
;; C-c M-o         comint-clear-buffer
;; C-c M-r         comint-previous-matching-input-from-input
;; C-c M-s         comint-next-matching-input-from-input
