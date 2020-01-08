(define-key counsel-find-file-map (kbd "<jd:C-bks>") 'counsel-up-directory)

(provide 'jd:counsel-kb)

;; File: /home/i/.emacs.d/config/external/elpa/counsel-20190830.1557/counsel.el
;; 
;; counsel-ag-map
;; --------------
;; key             binding
;; ---             -------
;; 
;; C-l             ivy-call-and-recenter
;; C-x             Prefix Command
;; C-'             swiper-avy
;; <nil>           Prefix Command
;; 
;; C-x C-d         counsel-cd
;; 
;; M-q             counsel-git-grep-query-replace
;; 
;; counsel-imenu-map
;; -----------------
;; key             binding
;; ---             -------
;; 
;; C-l             ivy-call-and-recenter
;; 
;; counsel-git-grep-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; C-l             ivy-call-and-recenter
;; <nil>           Prefix Command
;; 
;; C-c RET         counsel-git-grep-switch-cmd
;; 
;; M-q             counsel-git-grep-query-replace
;; 
;; counsel-find-file-map
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; `               ??
;; C-DEL           counsel-up-directory
;; <C-backspace>   counsel-up-directory
;; 
;; counsel-grep-map
;; ----------------
;; key             binding
;; ---             -------
;; 
;; C-l             ivy-call-and-recenter
;; C-'             swiper-avy
;; <nil>           Prefix Command
;; 
;; M-q             swiper-query-replace
;; 
;; counsel-describe-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; C-,             counsel--info-lookup-symbol
;; C-.             counsel-find-symbol
;; 
;; counsel-mode-map
;; ----------------
;; key             binding
;; ---             -------
;; 
;; <remap>         Prefix Command
;; 
;; <remap> <apropos-command>       counsel-apropos
;; <remap> <bookmark-jump>         counsel-bookmark
;; <remap> <describe-bindings>     counsel-descbinds
;; <remap> <describe-face>         counsel-describe-face
;; <remap> <describe-function>     counsel-describe-function
;; <remap> <describe-variable>     counsel-describe-variable
;; <remap> <execute-extended-command>
;;                                 counsel-M-x
;; <remap> <find-file>             counsel-find-file
;; <remap> <find-library>          counsel-find-library
;; <remap> <imenu>                 counsel-imenu
;; <remap> <info-lookup-symbol>    counsel-info-lookup-symbol
;; <remap> <list-faces-display>    counsel-faces
;; <remap> <load-library>          counsel-load-library
;; <remap> <load-theme>            counsel-load-theme
;; <remap> <pop-to-mark-command>   counsel-mark-ring
;; <remap> <yank-pop>              counsel-yank-pop
