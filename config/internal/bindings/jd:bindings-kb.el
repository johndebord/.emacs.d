(provide 'jd:bindings-kb)

;; File: /usr/local/share/emacs/26.3.50/lisp/bindings.elc
;; 
;; mode-line-column-line-number-mode-map
;; -------------------------------------
;; key             binding
;; ---             -------
;; 
;; <mode-line>     Prefix Command
;; 
;; <mode-line> <down-mouse-1>      Prefix Command
;; 
;; <mode-line> <down-mouse-1> <column-number-mode>
;;                                 column-number-mode
;; <mode-line> <down-mouse-1> <line-number-mode>
;;                                 line-number-mode
;; <mode-line> <down-mouse-1> <size-indication-mode>
;;                                 size-indication-mode
;; 
;; goto-map
;; --------
;; key             binding
;; ---             -------
;; 
;; TAB             move-to-column
;; ESC             Prefix Command
;; c               goto-char
;; g               goto-line
;; n               next-error
;; p               previous-error
;; <nil>           Prefix Command
;; 
;; M-g             goto-line
;; M-n             next-error
;; M-p             previous-error
;; 
;; ESC g           goto-line
;; ESC n           next-error
;; ESC p           previous-error
;; 
;; mode-line-minor-mode-keymap
;; ---------------------------
;; key             binding
;; ---             -------
;; 
;; <header-line>   Prefix Command
;; <mode-line>     Prefix Command
;; 
;; <header-line> <down-mouse-3>    Prefix Command
;; 
;; <mode-line> <down-mouse-1>      mouse-minor-mode-menu
;; <mode-line> <down-mouse-3>      Prefix Command
;; <mode-line> <mouse-2>           mode-line-minor-mode-help
;; 
;; <header-line> <down-mouse-3> <abbrev-mode>
;;                                 abbrev-mode
;; <header-line> <down-mouse-3> <auto-fill-mode>
;;                                 auto-fill-mode
;; <header-line> <down-mouse-3> <auto-revert-mode>
;;                                 auto-revert-mode
;; <header-line> <down-mouse-3> <auto-revert-tail-mode>
;;                                 auto-revert-tail-mode
;; <header-line> <down-mouse-3> <flyspell-mode>
;;                                 flyspell-mode
;; <header-line> <down-mouse-3> <font-lock-mode>
;;                                 font-lock-mode
;; <header-line> <down-mouse-3> <glasses-mode>
;;                                 glasses-mode
;; <header-line> <down-mouse-3> <hide-ifdef-mode>
;;                                 hide-ifdef-mode
;; <header-line> <down-mouse-3> <highlight-changes-mode>
;;                                 highlight-changes-mode
;; <header-line> <down-mouse-3> <outline-minor-mode>
;;                                 outline-minor-mode
;; <header-line> <down-mouse-3> <overwrite-mode>
;;                                 overwrite-mode
;; 
;; <mode-line> <down-mouse-3> <abbrev-mode>
;;                                 abbrev-mode
;; <mode-line> <down-mouse-3> <auto-fill-mode>
;;                                 auto-fill-mode
;; <mode-line> <down-mouse-3> <auto-revert-mode>
;;                                 auto-revert-mode
;; <mode-line> <down-mouse-3> <auto-revert-tail-mode>
;;                                 auto-revert-tail-mode
;; <mode-line> <down-mouse-3> <flyspell-mode>
;;                                 flyspell-mode
;; <mode-line> <down-mouse-3> <font-lock-mode>
;;                                 font-lock-mode
;; <mode-line> <down-mouse-3> <glasses-mode>
;;                                 glasses-mode
;; <mode-line> <down-mouse-3> <hide-ifdef-mode>
;;                                 hide-ifdef-mode
;; <mode-line> <down-mouse-3> <highlight-changes-mode>
;;                                 highlight-changes-mode
;; <mode-line> <down-mouse-3> <outline-minor-mode>
;;                                 outline-minor-mode
;; <mode-line> <down-mouse-3> <overwrite-mode>
;;                                 overwrite-mode
;; 
;; ctl-x-r-map
;; -----------
;; key             binding
;; ---             -------
;; 
;; C-@             point-to-register
;; ESC             Prefix Command
;; SPC             point-to-register
;; +               increment-register
;; M               bookmark-set-no-overwrite
;; N               rectangle-number-lines
;; b               bookmark-jump
;; c               clear-rectangle
;; d               delete-rectangle
;; f               frameset-to-register
;; g               insert-register
;; i               insert-register
;; j               jump-to-register
;; k               kill-rectangle
;; l               bookmark-bmenu-list
;; m               bookmark-set
;; n               number-to-register
;; o               open-rectangle
;; r               copy-rectangle-to-register
;; s               copy-to-register
;; t               string-rectangle
;; w               window-configuration-to-register
;; x               copy-to-register
;; y               yank-rectangle
;; C-SPC           point-to-register
;; 
;; ESC w           copy-rectangle-as-kill
;; 
;; search-map
;; ----------
;; key             binding
;; ---             -------
;; 
;; ESC             Prefix Command
;; .               isearch-forward-symbol-at-point
;; _               isearch-forward-symbol
;; h               Prefix Command
;; o               occur
;; w               isearch-forward-word
;; <nil>           Prefix Command
;; 
;; M-w             eww-search-words
;; 
;; h .             highlight-symbol-at-point
;; h f             hi-lock-find-patterns
;; h l             highlight-lines-matching-regexp
;; h p             highlight-phrase
;; h r             highlight-regexp
;; h u             unhighlight-regexp
;; h w             hi-lock-write-interactive-patterns
;; 
;; ESC w           eww-search-words
;; 
;; mode-line-coding-system-map
;; ---------------------------
;; key             binding
;; ---             -------
;; 
;; <mode-line>     Prefix Command
;; 
;; <mode-line> <mouse-1>           ??
;; <mode-line> <mouse-3>           ??
;; 
;; narrow-map
;; ----------
;; key             binding
;; ---             -------
;; 
;; d               narrow-to-defun
;; n               narrow-to-region
;; p               narrow-to-page
;; w               widen
;; 
;; mode-line-major-mode-keymap
;; ---------------------------
;; key             binding
;; ---             -------
;; 
;; <mode-line>     Prefix Command
;; 
;; <mode-line> <down-mouse-3>      Prefix Command
;; <mode-line> <mouse-2>           describe-mode
;; 
;; <mode-line> <down-mouse-3> <abbrev-mode>
;;                                 abbrev-mode
;; <mode-line> <down-mouse-3> <auto-fill-mode>
;;                                 auto-fill-mode
;; <mode-line> <down-mouse-3> <auto-revert-mode>
;;                                 auto-revert-mode
;; <mode-line> <down-mouse-3> <auto-revert-tail-mode>
;;                                 auto-revert-tail-mode
;; <mode-line> <down-mouse-3> <flyspell-mode>
;;                                 flyspell-mode
;; <mode-line> <down-mouse-3> <font-lock-mode>
;;                                 font-lock-mode
;; <mode-line> <down-mouse-3> <glasses-mode>
;;                                 glasses-mode
;; <mode-line> <down-mouse-3> <hide-ifdef-mode>
;;                                 hide-ifdef-mode
;; <mode-line> <down-mouse-3> <highlight-changes-mode>
;;                                 highlight-changes-mode
;; <mode-line> <down-mouse-3> <outline-minor-mode>
;;                                 outline-minor-mode
;; <mode-line> <down-mouse-3> <overwrite-mode>
;;                                 overwrite-mode
;; 
;; mode-specific-map
;; -----------------
;; key             binding
;; ---             -------
;; 
;; mode-line-input-method-map
;; --------------------------
;; key             binding
;; ---             -------
;; 
;; <mode-line>     Prefix Command
;; 
;; <mode-line> <mouse-2>           ??
;; <mode-line> <mouse-3>           ??
;; 
;; mode-line-buffer-identification-keymap
;; --------------------------------------
;; key             binding
;; ---             -------
;; 
;; <header-line>   Prefix Command
;; <mode-line>     Prefix Command
;; 
;; <header-line> <down-mouse-1>    ignore
;; <header-line> <down-mouse-3>    ignore
;; <header-line> <mouse-1>         mode-line-previous-buffer
;; <header-line> <mouse-3>         mode-line-next-buffer
;; 
;; <mode-line> <mouse-1>           mode-line-previous-buffer
;; <mode-line> <mouse-3>           mode-line-next-buffer
;; 
;; abbrev-map
;; ----------
;; key             binding
;; ---             -------
;; 
;; C-a             add-mode-abbrev
;; '               expand-abbrev
;; +               add-mode-abbrev
;; -               inverse-add-global-abbrev
;; e               expand-abbrev
;; g               add-global-abbrev
;; i               Prefix Command
;; l               add-mode-abbrev
;; n               expand-jump-to-next-slot
;; p               expand-jump-to-previous-slot
;; 
;; i g             inverse-add-global-abbrev
;; i l             inverse-add-mode-abbrev
;; 
;; mode-line-mode-menu
;; -------------------
;; key             binding
;; ---             -------
;; 
;; <abbrev-mode>   abbrev-mode
;; <auto-fill-mode>                auto-fill-mode
;; <auto-revert-mode>              auto-revert-mode
;; <auto-revert-tail-mode>         auto-revert-tail-mode
;; <flyspell-mode>                 flyspell-mode
;; <font-lock-mode>                font-lock-mode
;; <glasses-mode>                  glasses-mode
;; <hide-ifdef-mode>               hide-ifdef-mode
;; <highlight-changes-mode>        highlight-changes-mode
;; <outline-minor-mode>            outline-minor-mode
;; <overwrite-mode>                overwrite-mode
