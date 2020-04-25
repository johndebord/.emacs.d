(define-key query-replace-map (kbd "a") 'automatic)

(provide 'jd:replace-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/replace.elc
;; 
;; query-replace-map
;; -----------------
;; key             binding
;; ---             -------
;; 
;; C-g             quit
;; C-h             help
;; C-l             recenter
;; RET             exit
;; C-r             edit
;; C-v             scroll-up
;; C-w             delete-and-edit
;; ESC             Prefix Command
;; C-]             quit
;; SPC             act
;; !               automatic
;; ,               act-and-show
;; .               act-and-exit
;; ?               help
;; E               edit-replacement
;; N               skip
;; U               undo-all
;; Y               act
;; ^               backup
;; e               edit-replacement
;; n               skip
;; q               exit
;; u               undo
;; y               act
;; DEL             skip
;; <M-next>        scroll-other-window
;; <M-prior>       scroll-other-window-down
;; <backspace>     skip
;; <delete>        skip
;; <escape>        exit-prefix
;; <f1>            help
;; <help>          help
;; <next>          scroll-up
;; <prior>         scroll-down
;; <return>        exit
;; 
;; ESC C-v         scroll-other-window
;; ESC v           scroll-down
;; ESC C-S-v       scroll-other-window-down
;; 
;; occur-mode-map
;; --------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; RET             occur-mode-goto-occurrence
;; C-o             occur-mode-display-occurrence
;; ESC             Prefix Command
;; c               clone-buffer
;; e               occur-edit-mode
;; o               occur-mode-goto-occurrence-other-window
;; r               occur-rename-buffer
;; <mouse-2>       occur-mode-mouse-goto
;; 
;; ESC n           occur-next
;; ESC p           occur-prev
;; 
;; C-c C-c         occur-mode-goto-occurrence
;; C-c C-f         next-error-follow-minor-mode
;; 
;; multi-query-replace-map
;; -----------------------
;; key             binding
;; ---             -------
;; 
;; C-g             quit
;; C-h             help
;; C-l             recenter
;; RET             exit
;; C-r             edit
;; C-v             scroll-up
;; C-w             delete-and-edit
;; ESC             Prefix Command
;; C-]             quit
;; SPC             act
;; !               automatic
;; ,               act-and-show
;; .               act-and-exit
;; ?               help
;; E               edit-replacement
;; N               exit-current
;; U               undo-all
;; Y               automatic-all
;; ^               backup
;; e               edit-replacement
;; n               skip
;; q               exit
;; u               undo
;; y               act
;; DEL             skip
;; <M-next>        scroll-other-window
;; <M-prior>       scroll-other-window-down
;; <backspace>     skip
;; <delete>        skip
;; <escape>        exit-prefix
;; <f1>            help
;; <help>          help
;; <next>          scroll-up
;; <prior>         scroll-down
;; <return>        exit
;; 
;; ESC C-v         scroll-other-window
;; ESC v           scroll-down
;; ESC C-S-v       scroll-other-window-down
;; 
;; occur-edit-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-o             occur-mode-display-occurrence
;; ESC             Prefix Command
;; <mouse-2>       occur-mode-mouse-goto
;; 
;; C-c C-c         occur-cease-edit
;; C-c C-f         next-error-follow-minor-mode
;; 
;; ESC TAB         ispell-complete-word
;; 
;; occur-menu-map
;; --------------
;; key             binding
;; ---             -------
;; 
;; <clone-buffer>  clone-buffer
;; <kill-this-buffer>              kill-this-buffer
;; <next-error-follow-minor-mode>  next-error-follow-minor-mode
;; <occur-edit-buffer>             occur-edit-mode
;; <occur-mode-display-occurrence>
;;                                 occur-mode-display-occurrence
;; <occur-mode-goto-occurrence>    occur-mode-goto-occurrence
;; <occur-mode-goto-occurrence-other-window>
;;                                 occur-mode-goto-occurrence-other-window
;; <occur-next>                    occur-next
;; <occur-prev>                    occur-prev
;; <occur-rename-buffer>           occur-rename-buffer
;; <quit-window>                   quit-window
;; <revert-buffer>                 revert-buffer
