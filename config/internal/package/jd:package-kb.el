(define-key package-menu-mode-map (kbd "<jd:ret>") 'package-menu-describe-package)

(provide 'jd:package-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/emacs-lisp/package.elc
;; 
;; package-menu-mode-menu
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; <Customize>     menu-function-0
;; <Describe Package>              package-menu-describe-package
;; <Display Older Versions>        package-menu-toggle-hiding
;; <Execute Marked Actions>        package-menu-execute
;; <Filter Package List>           package-menu-filter
;; <Help>          package-menu-quick-help
;; <Hide by Regexp>                package-menu-hide-package
;; <Mark All Available Upgrades>   package-menu-mark-upgrades
;; <Mark All Obsolete for Deletion>
;;                                 package-menu-mark-obsolete-for-deletion
;; <Mark for Deletion>             package-menu-mark-delete
;; <Mark for Install>              package-menu-mark-install
;; <Quit>          quit-window
;; <Redisplay buffer>              revert-buffer
;; <Refresh Package List>          package-menu-refresh
;; <Unmark>        package-menu-mark-unmark
;; 
;; package-menu-mode-map
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; TAB             forward-button
;; RET             package-menu-describe-package
;; ESC             Prefix Command
;; SPC             scroll-up-command
;; (               package-menu-toggle-hiding
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               package-menu-describe-package
;; H               package-menu-hide-package
;; S               tabulated-list-sort
;; U               package-menu-mark-upgrades
;; d               package-menu-mark-delete
;; f               package-menu-filter
;; g               revert-buffer
;; h               package-menu-quick-help
;; i               package-menu-mark-install
;; n               next-line
;; p               previous-line
;; q               quit-window
;; r               package-menu-refresh
;; u               package-menu-mark-unmark
;; x               package-menu-execute
;; ~               package-menu-mark-obsolete-for-deletion
;; DEL             package-menu-backup-unmark
;; S-SPC           scroll-down-command
;; <backtab>       backward-button
;; <follow-link>   mouse-face
;; <mouse-2>       mouse-select-window
;; <remap>         Prefix Command
;; 
;; ESC TAB         backward-button
;; 
;; [back]
