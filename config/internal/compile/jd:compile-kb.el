(setq-default compilation-mode-map (make-sparse-keymap))
(define-key compilation-mode-map (kbd "<C-M-o>")  'jd:next-error)
(define-key compilation-mode-map (kbd "<C-M-u>")  'jd:previous-error)
(define-key compilation-mode-map (kbd "<C-c> <C-c>") 'kill-compilation)
(define-key compilation-mode-map (kbd "<jd:ret>") 'compile-goto-error)

(provide 'jd:compile-kb)

;; File: /usr/local/share/emacs/26.3.50/lisp/progmodes/compile.elc
;; 
;; compilation-mode-tool-bar-map
;; -----------------------------
;; key             binding
;; ---             -------
;; 
;; <copy>          kill-ring-save
;; <cut>           kill-region
;; <dired>         dired
;; <isearch-forward>               isearch-forward
;; <kill-buffer>                   kill-this-buffer
;; <kill-compilation>              kill-compilation
;; <new-file>      find-file
;; <next-error-no-select>          next-error-no-select
;; <open-file>                     menu-find-file-existing
;; <paste>         yank
;; <previous-error-no-select>      previous-error-no-select
;; <recompile>                     recompile
;; <save-buffer>                   save-buffer
;; 
;; compilation-mode-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; TAB             compilation-next-error
;; RET             compile-goto-error
;; C-o             compilation-display-error
;; SPC             scroll-up-command
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               describe-mode
;; g               recompile
;; h               describe-mode
;; q               quit-window
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <backtab>       compilation-previous-error
;; <follow-link>   mouse-face
;; <mouse-2>       compile-goto-error
;; <nil>           Prefix Command
;; <remap>         Prefix Command
;; 
;; M-n             compilation-next-error
;; M-p             compilation-previous-error
;; M-{             compilation-previous-file
;; M-}             compilation-next-file
;; 
;; C-c C-c         compile-goto-error
;; C-c C-f         next-error-follow-minor-mode
;; C-c C-k         kill-compilation
;; 
;; compilation-minor-mode-map
;; --------------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; RET             compile-goto-error
;; C-o             compilation-display-error
;; SPC             scroll-up-command
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               describe-mode
;; g               recompile
;; h               describe-mode
;; q               quit-window
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <follow-link>   mouse-face
;; <mouse-2>       compile-goto-error
;; <nil>           Prefix Command
;; <remap>         Prefix Command
;; 
;; M-n             compilation-next-error
;; M-p             compilation-previous-error
;; M-{             compilation-previous-file
;; M-}             compilation-next-file
;; 
;; C-c C-c         compile-goto-error
;; C-c C-k         kill-compilation
;; 
;; compilation-button-map
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; RET             compile-goto-error
;; <follow-link>   mouse-face
;; <mouse-2>       compile-goto-error
;; 
;; compilation-menu-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; <compilation-first-error>       first-error
;; <compilation-next-error>        next-error
;; <compilation-next-error-follow-minor-mode>
;;                                 next-error-follow-minor-mode
;; <compilation-previous-error>    previous-error
;; <compilation-skip>              Prefix Command
;; <stop-subjob>                   kill-compilation
;; 
;; <compilation-skip> <compilation-skip-info>
;;                                 ??
;; <compilation-skip> <compilation-skip-none>
;;                                 ??
;; <compilation-skip> <compilation-skip-warning-and-info>
;;                                 ??
;; 
;; compilation-shell-minor-mode-map
;; --------------------------------
;; key             binding
;; ---             -------
;; 
;; <nil>           Prefix Command
;; 
;; M-RET           compile-goto-error
;; C-M-n           compilation-next-error
;; C-M-p           compilation-previous-error
;; M-{             compilation-previous-file
;; M-}             compilation-next-file
