(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-c>") 'gdb-io-interrupt)
(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-d>") 'gdb-io-eof)
(define-key gdb-inferior-io-mode-map (kbd "<jd:ret>") 'comint-send-input)

(provide 'jd:gdb-mi-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/progmodes/gdb-mi.elc
;; 
;; gdb-registers-mode-map
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; TAB             ??
;; RET             gdb-edit-register-value
;; -               negative-argument
;; 0 .. 9          digit-argument
;; q               kill-current-buffer
;; <mouse-2>       gdb-edit-register-value
;; <remap>         Prefix Command
;; 
;; gdb-memory-unit-menu
;; --------------------
;; key             binding
;; ---             -------
;; 
;; <bytes>         gdb-memory-unit-byte
;; <giantwords>    gdb-memory-unit-giant
;; <halfwords>     gdb-memory-unit-halfword
;; <words>         gdb-memory-unit-word
;; 
;; gdb-breakpoints-mode-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; TAB             ??
;; RET             gdb-goto-breakpoint
;; SPC             gdb-toggle-breakpoint
;; -               negative-argument
;; 0 .. 9          digit-argument
;; D               gdb-delete-breakpoint
;; q               gdb-delete-frame-or-window
;; <follow-link>   mouse-face
;; <mouse-2>       gdb-goto-breakpoint
;; <remap>         Prefix Command
;; 
;; gdb-locals-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; TAB             ??
;; -               negative-argument
;; 0 .. 9          digit-argument
;; q               kill-current-buffer
;; <remap>         Prefix Command
;; 
;; gdb-memory-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; C               gdb-memory-set-columns
;; R               gdb-memory-set-rows
;; a               gdb-memory-set-address
;; b               gdb-memory-unit-byte
;; d               gdb-memory-format-signed
;; g               gdb-memory-unit-giant
;; h               gdb-memory-unit-halfword
;; n               gdb-memory-show-next-page
;; o               gdb-memory-format-octal
;; p               gdb-memory-show-previous-page
;; q               kill-current-buffer
;; t               gdb-memory-format-binary
;; u               gdb-memory-format-unsigned
;; w               gdb-memory-unit-word
;; x               gdb-memory-format-hexadecimal
;; <remap>         Prefix Command
;; 
;; gdb-edit-locals-map-1
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; RET             gdb-edit-locals-value
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <mouse-2>       gdb-edit-locals-value
;; <remap>         Prefix Command
;; 
;; gdb-locals-watch-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; RET             gud-watch
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <mouse-2>       gud-watch
;; <remap>         Prefix Command
;; 
;; gdb-memory-format-menu
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; <binary>        gdb-memory-format-binary
;; <hexadecimal>   gdb-memory-format-hexadecimal
;; <octal>         gdb-memory-format-octal
;; <signed>        gdb-memory-format-signed
;; <unsigned>      gdb-memory-format-unsigned
;; 
;; gdb-memory-unit-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; <header-line>   Prefix Command
;; 
;; <header-line> <down-mouse-3>    gdb-memory-unit-menu-1
;; 
;; gdb-inferior-io-mode-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-d             gdb-io-eof
;; 
;; C-c C-c         gdb-io-interrupt
;; C-c C-d         gdb-io-eof
;; C-c C-z         gdb-io-stop
;; C-c C-\         gdb-io-quit
;; 
;; gdb-disassembly-mode-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; -               negative-argument
;; 0 .. 9          digit-argument
;; q               kill-current-buffer
;; <remap>         Prefix Command
;; 
;; gdb-frames-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; RET             gdb-select-frame
;; -               negative-argument
;; 0 .. 9          digit-argument
;; q               kill-current-buffer
;; <follow-link>   mouse-face
;; <mouse-2>       gdb-select-frame
;; <remap>         Prefix Command
;; 
;; gdb-threads-mode-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; TAB             ??
;; RET             gdb-select-thread
;; D               gdb-frame-disassembly-for-thread
;; F               gdb-frame-stack-for-thread
;; L               gdb-frame-locals-for-thread
;; R               gdb-frame-registers-for-thread
;; c               gdb-continue-thread
;; d               gdb-display-disassembly-for-thread
;; f               gdb-display-stack-for-thread
;; i               gdb-interrupt-thread
;; l               gdb-display-locals-for-thread
;; r               gdb-display-registers-for-thread
;; s               gdb-step-thread
;; <follow-link>   mouse-face
;; <mouse-2>       gdb-select-thread
;; 
;; gdb-memory-format-map
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; <header-line>   Prefix Command
;; 
;; <header-line> <down-mouse-3>    gdb-memory-format-menu-1
