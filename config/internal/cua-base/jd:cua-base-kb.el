(define-key cua--cua-keys-keymap (kbd "<C-v>") 'yank)
(define-key cua--cua-keys-keymap (kbd "<C-z>") 'undo)
(define-key cua--cua-keys-keymap (kbd "<C-c> <timeout>") 'copy-region-as-kill)
(define-key cua--cua-keys-keymap (kbd "<C-x> <timeout>") 'kill-region)

(define-key cua--prefix-override-keymap (kbd "<C-c>") 'cua--prefix-override-handler)
(define-key cua--prefix-override-keymap (kbd "<C-x>") 'cua--prefix-override-handler)

(define-key cua--prefix-repeat-keymap (kbd "<C-c> <C-c>") 'cua--prefix-repeat-handler)
(define-key cua--prefix-repeat-keymap (kbd "<C-x> <C-x>") 'cua--prefix-repeat-handler)

(jd:provide-feature jd:cua-base-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/emulation/cua-base.elc
;; 
;; cua--prefix-repeat-keymap
;; -------------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-x             Prefix Command
;; 
;; C-c C-c         cua--prefix-repeat-handler
;; C-c <down>      cua--prefix-copy-handler
;; C-c <end>       cua--prefix-copy-handler
;; C-c <home>      cua--prefix-copy-handler
;; C-c <left>      cua--prefix-copy-handler
;; C-c <next>      cua--prefix-copy-handler
;; C-c <prior>     cua--prefix-copy-handler
;; C-c <right>     cua--prefix-copy-handler
;; C-c <up>        cua--prefix-copy-handler
;; 
;; C-x C-x         cua--prefix-repeat-handler
;; C-x <down>      cua--prefix-cut-handler
;; C-x <end>       cua--prefix-cut-handler
;; C-x <home>      cua--prefix-cut-handler
;; C-x <left>      cua--prefix-cut-handler
;; C-x <next>      cua--prefix-cut-handler
;; C-x <prior>     cua--prefix-cut-handler
;; C-x <right>     cua--prefix-cut-handler
;; C-x <up>        cua--prefix-cut-handler
;; 
;; cua--cua-keys-keymap
;; --------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-v             yank
;; C-x             Prefix Command
;; C-z             undo
;; <nil>           Prefix Command
;; 
;; M-v             delete-selection-repeat-replace-region
;; 
;; C-c <timeout>   copy-region-as-kill
;; 
;; C-x <timeout>   kill-region
;; 
;; cua--global-mark-keymap
;; -----------------------
;; key             binding
;; ---             -------
;; 
;; cua--rectangle-keymap
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; <C-return>      cua-clear-rectangle-mark
;; 
;; cua-global-keymap
;; -----------------
;; key             binding
;; ---             -------
;; 
;; C-S-SPC         cua-toggle-global-mark
;; <C-return>      cua-set-rectangle-mark
;; <remap>         Prefix Command
;; 
;; <remap> <clipboard-yank>        cua-paste
;; <remap> <exchange-point-and-mark>
;;                                 cua-exchange-point-and-mark
;; <remap> <scroll-down>           cua-scroll-down
;; <remap> <scroll-down-command>   cua-scroll-down
;; <remap> <scroll-up>             cua-scroll-up
;; <remap> <scroll-up-command>     cua-scroll-up
;; <remap> <set-mark-command>      cua-set-mark
;; <remap> <x-clipboard-yank>      cua-paste
;; <remap> <yank>                  cua-paste
;; <remap> <yank-pop>              cua-paste-pop
;; 
;; cua--prefix-override-keymap
;; ---------------------------
;; key             binding
;; ---             -------
;; 
;; C-c             cua--prefix-override-handler
;; C-x             cua--prefix-override-handler
;; 
;; cua--region-keymap
;; ------------------
;; key             binding
;; ---             -------
;; 
;; C-S-c           cua--shift-control-c-prefix
;; C-S-x           cua--shift-control-x-prefix
;; <C-return>      cua-toggle-rectangle-mark
;; <remap>         Prefix Command
;; 
;; <remap> <backward-delete-char>  cua-delete-region
;; <remap> <backward-delete-char-untabify>
;;                                 cua-delete-region
;; <remap> <clipboard-kill-region>
;;                                 cua-cut-region
;; <remap> <clipboard-kill-ring-save>
;;                                 cua-copy-region
;; <remap> <copy-region-as-kill>   cua-copy-region
;; <remap> <delete-backward-char>  cua-delete-region
;; <remap> <delete-char>           cua-delete-region
;; <remap> <delete-forward-char>   cua-delete-region
;; <remap> <keyboard-escape-quit>  cua-cancel
;; <remap> <keyboard-quit>         cua-cancel
;; <remap> <kill-region>           cua-cut-region
;; <remap> <kill-ring-save>        cua-copy-region
