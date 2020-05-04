(define-key Buffer-menu-mode-map (kbd "i") 'jd:backward-line)
(define-key Buffer-menu-mode-map (kbd "k") 'jd:forward-line)
(define-key Buffer-menu-mode-map (kbd "<jd:ret>") 'Buffer-menu-this-window)

(jd:provide-feature jd:buff-menu-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/buff-menu.elc
;; 
;; Buffer-menu-mode-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; C-d             Buffer-menu-delete-backwards
;; TAB             forward-button
;; C-k             Buffer-menu-delete
;; RET             Buffer-menu-this-window
;; C-o             Buffer-menu-switch-other-window
;; ESC             Prefix Command
;; SPC             next-line
;; %               Buffer-menu-toggle-read-only
;; -               negative-argument
;; 0               digit-argument
;; 1               Buffer-menu-1-window
;; 2               Buffer-menu-2-window
;; 3 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               describe-mode
;; S               tabulated-list-sort
;; T               Buffer-menu-toggle-files-only
;; U               Buffer-menu-unmark-all
;; V               Buffer-menu-view
;; b               Buffer-menu-bury
;; d               Buffer-menu-delete
;; e .. f          Buffer-menu-this-window
;; g               revert-buffer
;; h               describe-mode
;; k               Buffer-menu-delete
;; m               Buffer-menu-mark
;; n               next-line
;; o               Buffer-menu-other-window
;; p               previous-line
;; q               quit-window
;; s               Buffer-menu-save
;; t               Buffer-menu-visit-tags-table
;; u               Buffer-menu-unmark
;; v               Buffer-menu-select
;; x               Buffer-menu-execute
;; ~               Buffer-menu-not-modified
;; DEL             Buffer-menu-backup-unmark
;; S-SPC           scroll-down-command
;; <backtab>       backward-button
;; <follow-link>   mouse-face
;; <mouse-2>       Buffer-menu-mouse-select
;; <remap>         Prefix Command
;; 
;; ESC s           Prefix Command
;; ESC DEL         Buffer-menu-unmark-all-buffers
;; 
;; ESC TAB         backward-button
;; 
;; ESC s a         Prefix Command
;; 
;; ESC s a C-o     Buffer-menu-multi-occur
;; ESC s a C-s     Buffer-menu-isearch-buffers
;; ESC s a ESC     Prefix Command
;; 
;; ESC s a ESC C-s                 Buffer-menu-isearch-buffers-regexp
