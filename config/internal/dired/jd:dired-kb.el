(define-key dired-mode-map (kbd "i") 'jd:backward-line)
(define-key dired-mode-map (kbd "k") 'jd:forward-line)
(define-key dired-mode-map (kbd "<jd:ret>") 'dired-find-file)

(jd:provide-feature jd:dired-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/dired.elc
;; 
;; dired-mode-map
;; --------------
;; key             binding
;; ---             -------
;; 
;; e .. f          dired-find-file
;; 
;; RET             dired-find-file
;; C-o             dired-display-file
;; C-t             Prefix Command
;; SPC             dired-next-line
;; !               dired-do-shell-command
;; #               dired-flag-auto-save-files
;; $               dired-hide-subdir
;; %               Prefix Command
;; &               dired-do-async-shell-command
;; (               dired-hide-details-mode
;; *               Prefix Command
;; +               dired-create-directory
;; -               negative-argument
;; .               dired-clean-directory
;; 0 .. 9          digit-argument
;; :               Prefix Command
;; <               dired-prev-dirline
;; =               dired-diff
;; >               dired-next-dirline
;; ?               dired-summary
;; A               dired-do-find-regexp
;; B               dired-do-byte-compile
;; C               dired-do-copy
;; D               dired-do-delete
;; G               dired-do-chgrp
;; H               dired-do-hardlink
;; L               dired-do-load
;; M               dired-do-chmod
;; O               dired-do-chown
;; P               dired-do-print
;; Q               dired-do-find-regexp-and-replace
;; R               dired-do-rename
;; S               dired-do-symlink
;; T               dired-do-touch
;; U               dired-unmark-all-marks
;; W               browse-url-of-dired-file
;; X               dired-do-shell-command
;; Z               dired-do-compress
;; ^               dired-up-directory
;; a               dired-find-alternate-file
;; c               dired-do-compress-to
;; d               dired-flag-file-deletion
;; g               revert-buffer
;; h               describe-mode
;; i               dired-maybe-insert-subdir
;; j               dired-goto-file
;; k               dired-do-kill-lines
;; l               dired-do-redisplay
;; m               dired-mark
;; n               dired-next-line
;; o               dired-find-file-other-window
;; p               dired-previous-line
;; q               quit-window
;; s               dired-sort-toggle-or-edit
;; t               dired-toggle-marks
;; u               dired-unmark
;; v               dired-view-file
;; w               dired-copy-filename-as-kill
;; x               dired-do-flagged-delete
;; y               dired-show-file-type
;; ~               dired-flag-backup-files
;; DEL             dired-unmark-backward
;; S-SPC           dired-previous-line
;; <follow-link>   mouse-face
;; <mouse-2>       dired-mouse-find-file-other-window
;; <nil>           Prefix Command
;; <remap>         Prefix Command
;; 
;; C-t C-t         image-dired-dired-toggle-marked-thumbs
;; C-t .           image-dired-display-thumb
;; C-t a           image-dired-display-thumbs-append
;; C-t c           image-dired-dired-comment-files
;; C-t d           image-dired-display-thumbs
;; C-t e           image-dired-dired-edit-comment-and-tags
;; C-t f           image-dired-mark-tagged-files
;; C-t i           image-dired-dired-display-image
;; C-t j           image-dired-jump-thumbnail-buffer
;; C-t r           image-dired-delete-tag
;; C-t t           image-dired-tag-files
;; C-t x           image-dired-dired-display-external
;; 
;; % &             dired-flag-garbage-files
;; % C             dired-do-copy-regexp
;; % H             dired-do-hardlink-regexp
;; % R             dired-do-rename-regexp
;; % S             dired-do-symlink-regexp
;; % d             dired-flag-files-regexp
;; % g             dired-mark-files-containing-regexp
;; % l             dired-downcase
;; % m             dired-mark-files-regexp
;; % r             dired-do-rename-regexp
;; % u             dired-upcase
;; 
;; * C-n           dired-next-marked-file
;; * C-p           dired-prev-marked-file
;; * !             dired-unmark-all-marks
;; * %             dired-mark-files-regexp
;; * *             dired-mark-executables
;; * /             dired-mark-directories
;; * ?             dired-unmark-all-files
;; * @             dired-mark-symlinks
;; * c             dired-change-marks
;; * m             dired-mark
;; * s             dired-mark-subdir-files
;; * t             dired-toggle-marks
;; * u             dired-unmark
;; * DEL           dired-unmark-backward
;; 
;; : d             epa-dired-do-decrypt
;; : e             epa-dired-do-encrypt
;; : s             epa-dired-do-sign
;; : v             epa-dired-do-verify
;; 
;; <remap> <advertised-undo>       dired-undo
;; <remap> <next-line>             dired-next-line
;; <remap> <previous-line>         dired-previous-line
;; <remap> <read-only-mode>        dired-toggle-read-only
;; <remap> <toggle-read-only>      dired-toggle-read-only
;; <remap> <undo>                  dired-undo
;; 
;; C-M-d           dired-tree-down
;; C-M-n           dired-next-subdir
;; C-M-p           dired-prev-subdir
;; C-M-u           dired-tree-up
;; M-$             dired-hide-all
;; M-s             Prefix Command
;; M-{             dired-prev-marked-file
;; M-}             dired-next-marked-file
;; M-DEL           dired-unmark-all-files
;; 
;; M-s a           Prefix Command
;; M-s f           Prefix Command
;; 
;; M-s f C-s       dired-isearch-filenames
;; M-s f <nil>     Prefix Command
;; 
;; M-s a C-s       dired-do-isearch
;; M-s a <nil>     Prefix Command
;; 
;; M-s f C-M-s     dired-isearch-filenames-regexp
;; 
;; M-s a C-M-s     dired-do-isearch-regexp
