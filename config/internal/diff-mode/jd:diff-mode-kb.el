(provide 'jd:diff-mode-kb)

;; File: /usr/local/share/emacs/26.3.50/lisp/vc/diff-mode.elc
;; 
;; diff-minor-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; 
;; C-c =           Prefix Command
;; 
;; C-c = TAB       diff-hunk-next
;; C-c = RET       diff-goto-source
;; C-c = SPC       scroll-up-command
;; C-c = -         negative-argument
;; C-c = 0 .. C-c = 9              digit-argument
;; C-c = <         beginning-of-buffer
;; C-c = >         end-of-buffer
;; C-c = ?         describe-mode
;; C-c = A         diff-ediff-patch
;; C-c = K         diff-file-kill
;; C-c = N         diff-file-next
;; C-c = P         diff-file-prev
;; C-c = R         diff-reverse-direction
;; C-c = W         widen
;; C-c = g         revert-buffer
;; C-c = h         describe-mode
;; C-c = k         diff-hunk-kill
;; C-c = n         diff-hunk-next
;; C-c = o         diff-goto-source
;; C-c = p         diff-hunk-prev
;; C-c = q         quit-window
;; C-c = r         diff-restrict-view
;; C-c = {         diff-file-prev
;; C-c = }         diff-file-next
;; C-c = DEL       scroll-down-command
;; C-c = S-SPC     scroll-down-command
;; C-c = <backtab>                 diff-hunk-prev
;; C-c = <mouse-2>                 diff-goto-source
;; C-c = <remap>                   Prefix Command
;; 
;; C-c = <remap> <undo>            diff-undo
;; 
;; diff-mode-shared-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; TAB             diff-hunk-next
;; RET             diff-goto-source
;; SPC             scroll-up-command
;; -               negative-argument
;; 0 .. 9          digit-argument
;; <               beginning-of-buffer
;; >               end-of-buffer
;; ?               describe-mode
;; A               diff-ediff-patch
;; K               diff-file-kill
;; N               diff-file-next
;; P               diff-file-prev
;; R               diff-reverse-direction
;; W               widen
;; g               revert-buffer
;; h               describe-mode
;; k               diff-hunk-kill
;; n               diff-hunk-next
;; o               diff-goto-source
;; p               diff-hunk-prev
;; q               quit-window
;; r               diff-restrict-view
;; {               diff-file-prev
;; }               diff-file-next
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <backtab>       diff-hunk-prev
;; <mouse-2>       diff-goto-source
;; <remap>         Prefix Command
;; 
;; <remap> <undo>  diff-undo
;; 
;; diff-mode-map
;; -------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-x             Prefix Command
;; ESC             Prefix Command
;; 
;; C-x 4           Prefix Command
;; 
;; C-c C-a         diff-apply-hunk
;; C-c C-b         diff-refine-hunk
;; C-c C-c         diff-goto-source
;; C-c C-d         diff-unified->context
;; C-c C-e         diff-ediff-patch
;; C-c C-f         next-error-follow-minor-mode
;; C-c C-n         diff-restrict-view
;; C-c C-r         diff-reverse-direction
;; C-c C-s         diff-split-hunk
;; C-c C-t         diff-test-hunk
;; C-c C-u         diff-context->unified
;; C-c C-w         diff-ignore-whitespace-hunk
;; 
;; ESC TAB         diff-hunk-next
;; ESC RET         diff-goto-source
;; ESC SPC         scroll-up-command
;; ESC -           negative-argument
;; ESC 0 .. ESC 9  digit-argument
;; ESC <           beginning-of-buffer
;; ESC >           end-of-buffer
;; ESC ?           describe-mode
;; ESC K           diff-file-kill
;; ESC N           diff-file-next
;; ESC P           diff-file-prev
;; ESC h           describe-mode
;; ESC k           diff-hunk-kill
;; ESC n           diff-hunk-next
;; ESC o           diff-goto-source
;; ESC p           diff-hunk-prev
;; ESC {           diff-file-prev
;; ESC }           diff-file-next
;; ESC DEL         scroll-down-command
;; ESC S-SPC       scroll-down-command
;; ESC <backtab>   diff-hunk-prev
;; ESC <mouse-2>   diff-goto-source
;; ESC <remap>     Prefix Command
;; 
;; C-x 4 A         diff-add-change-log-entries-other-window
;; 
;; ESC <remap> <undo>              diff-undo
;; 
;; diff-mode-menu
;; --------------
;; key             binding
;; ---             -------
;; 
;; <Apply diff with Ediff>         diff-ediff-patch
;; <Apply hunk>                    diff-apply-hunk
;; <Context -> Unified>            diff-context->unified
;; <Create Change Log entries>     diff-add-change-log-entries-other-window
;; <Highlight fine changes>        diff-refine-hunk
;; <Ignore whitespace changes>     diff-ignore-whitespace-hunk
;; <Jump to Source>                diff-goto-source
;; <Kill current file's hunks>     diff-file-kill
;; <Kill current hunk>             diff-hunk-kill
;; <Next File>                     diff-file-next
;; <Next Hunk>                     diff-hunk-next
;; <Previous File>                 diff-file-prev
;; <Previous Hunk>                 diff-hunk-prev
;; <Remove trailing whitespace>    diff-delete-trailing-whitespace
;; <Reverse direction>             diff-reverse-direction
;; <Show trailing whitespace>      whitespace-mode
;; <Split hunk>                    diff-split-hunk
;; <Test applying hunk>            diff-test-hunk
;; <Unified -> Context>            diff-unified->context
