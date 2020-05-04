(define-key grep-mode-map (kbd "i") 'jd:backward-line)
(define-key grep-mode-map (kbd "k") 'jd:forward-line)
(define-key grep-mode-map (kbd "l") 'compile-goto-error)
(define-key grep-mode-map (kbd "q") 'quit-window)
(define-key grep-mode-map (kbd "<jd:ret>") 'compile-goto-error)

(jd:provide-feature jd:grep-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/progmodes/grep.elc
;; 
;; grep-mode-map
;; -------------
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
;; n               next-error-no-select
;; p               previous-error-no-select
;; q               quit-window
;; {               compilation-previous-file
;; }               compilation-next-file
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <backtab>       compilation-previous-error
;; <follow-link>   mouse-face
;; <mouse-2>       compile-goto-error
;; <nil>           Prefix Command
;; <remap>         Prefix Command
;; 
;; C-c C-f         next-error-follow-minor-mode
;; 
;; M-n             compilation-next-error
;; M-p             compilation-previous-error
;; M-{             compilation-previous-file
;; M-}             compilation-next-file
;; 
;; C-c C-c         compile-goto-error
;; C-c C-k         kill-compilation
;; 
;; grep-mode-tool-bar-map
;; ----------------------
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
;; <undo>          undo
