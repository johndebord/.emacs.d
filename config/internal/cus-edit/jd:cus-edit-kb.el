(define-key custom-mode-map (kbd "<C-s>") 'Custom-save)
(define-key custom-mode-map (kbd "<jd:ret>") 'Custom-newline)
(define-key custom-mode-map (kbd "<jd:tab>") 'widget-forward)
(define-key custom-mode-map (kbd "<jd:S-tab>") 'widget-backward)

(provide 'jd:cus-edit-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/cus-edit.elc
;; 
;; custom-mode-link-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; TAB             widget-forward
;; RET             Custom-newline
;; C-x             Prefix Command
;; ESC             Prefix Command
;; SPC             scroll-up-command
;; n               widget-forward
;; p               widget-backward
;; q               Custom-buffer-done
;; u               Custom-goto-parent
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <S-tab>         widget-backward
;; <backtab>       widget-backward
;; <down-mouse-1>  mouse-drag-region
;; <mouse-2>       widget-move-and-invoke
;; <remap>         Prefix Command
;; 
;; C-c C-c         Custom-set
;; 
;; C-x C-s         Custom-save
;; 
;; <remap> <self-insert-command>   Custom-no-edit
;; 
;; ESC TAB         widget-backward
;; 
;; custom-field-keymap
;; -------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-e             widget-end-of-line
;; TAB             widget-forward
;; C-k             widget-kill-line
;; RET             widget-field-activate
;; C-x             Prefix Command
;; ESC             Prefix Command
;; <S-tab>         widget-backward
;; <backtab>       widget-backward
;; <down-mouse-1>  widget-button-click
;; <down-mouse-2>  widget-button-click
;; <nil>           Prefix Command
;; 
;; C-x C-s         Custom-save
;; 
;; C-c C-c         Custom-set
;; 
;; C-M-i           widget-complete
;; 
;; ESC TAB         widget-backward
;; 
;; custom-mode-map
;; ---------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; TAB             widget-forward
;; RET             Custom-newline
;; C-x             Prefix Command
;; ESC             Prefix Command
;; SPC             scroll-up-command
;; n               widget-forward
;; p               widget-backward
;; q               Custom-buffer-done
;; u               Custom-goto-parent
;; DEL             scroll-down-command
;; S-SPC           scroll-down-command
;; <S-tab>         widget-backward
;; <backtab>       widget-backward
;; <down-mouse-1>  widget-button-click
;; <down-mouse-2>  widget-button-click
;; <remap>         Prefix Command
;; 
;; C-c C-c         Custom-set
;; 
;; C-x C-s         Custom-save
;; 
;; <remap> <self-insert-command>   Custom-no-edit
;; 
;; ESC TAB         widget-backward
;; 
;; Custom-mode-menu
;; ----------------
;; key             binding
;; ---             -------
;; 
;; < Apply >       Custom-set
;; < Apply and Save >              Custom-save
;; < Erase Customizations >        Custom-reset-standard
;; < Exit >        Custom-buffer-done
;; < Help for Customize >          Custom-help
;; < Reset Customizations >        Custom-reset-saved
;; < Undo Edits >                  Custom-reset-current
;; 
;; Custom-mode-map
;; ---------------
;; key             binding
;; ---             -------
