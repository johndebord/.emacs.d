(jd:provide-feature jd:lsp-mode-kb)

;; File: $HOME/.emacs.d/config/external/elpa/lsp-mode-20200303.109/lsp-mode.el
;; 
;; lsp-browser-mode-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; lsp-mode-menu
;; -------------
;; key             binding
;; ---             -------
;; 
;; <Code action>   lsp-execute-code-action
;; <Describe>      lsp-describe-thing-at-point
;; <Find declarations>             lsp-find-declaration
;; <Find implementations>          lsp-find-implementation
;; <Find references>               lsp-find-references
;; <Format>        lsp-format-buffer
;; <Go to definition>              lsp-find-definition
;; <Go to type declaration>        lsp-find-type-definition
;; <Highlight references>          lsp-document-highlight
;; <Rename>        lsp-rename
;; <Session>       Prefix Command
;; <Toggle Lenses>                 lsp-lens-mode
;; <Workspace Folders>             Prefix Command
;; 
;; <Session> <Describe>            lsp-describe-session
;; <Session> <Restart>             lsp-restart-workspace
;; <Session> <Shutdown>            lsp-shutdown-workspace
;; <Session> <View logs>           lsp-workspace-show-log
;; 
;; <Workspace Folders> <Add>       lsp-workspace-folders-add
;; <Workspace Folders> <Open>      lsp-workspace-folders-open
;; <Workspace Folders> <Remove>    lsp-workspace-folders-remove
;; 
;; lsp-mode-map
;; ------------
;; key             binding
;; ---             -------
;; 
;; s-l             Prefix Command
;; C-S-SPC         lsp-signature-activate
;; <C-down-mouse-1>                lsp-find-definition-mouse
;; <C-mouse-1>                     ignore
;; <mouse-3>       lsp-mouse-click
;; 
;; s-l =           Prefix Command
;; s-l F           Prefix Command
;; s-l G           Prefix Command
;; s-l T           Prefix Command
;; s-l a           Prefix Command
;; s-l g           Prefix Command
;; s-l h           Prefix Command
;; s-l r           Prefix Command
;; s-l s           Prefix Command
;; 
;; s-l T L         lsp-toggle-trace-io
;; 
;; s-l F a         lsp-workspace-folders-add
;; s-l F b         lsp-workspace-blacklist-remove
;; s-l F r         lsp-workspace-folders-remove
;; 
;; s-l s d         lsp-describe-session
;; s-l s s         lsp
;; 
;; lsp-command-map
;; ---------------
;; key             binding
;; ---             -------
;; 
;; =               Prefix Command
;; F               Prefix Command
;; G               Prefix Command
;; T               Prefix Command
;; a               Prefix Command
;; g               Prefix Command
;; h               Prefix Command
;; r               Prefix Command
;; s               Prefix Command
;; 
;; T L             lsp-toggle-trace-io
;; 
;; F a             lsp-workspace-folders-add
;; F b             lsp-workspace-blacklist-remove
;; F r             lsp-workspace-folders-remove
;; 
;; s d             lsp-describe-session
;; s s             lsp
;; 
;; lsp-log-io-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; K               lsp--erase-session-log-buffers
;; k               lsp--erase-log-buffer
;; <nil>           Prefix Command
;; 
;; M-n             lsp-log-io-next
;; M-p             lsp-log-io-prev
;; 
;; lsp-signature-mode-map
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; <nil>           Prefix Command
;; 
;; C-c C-k         lsp-signature-stop
;; 
;; M-a             lsp-signature-toggle-full-docs
;; M-n             lsp-signature-next
;; M-p             lsp-signature-previous
