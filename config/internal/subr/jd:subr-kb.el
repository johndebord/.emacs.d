(define-key read-passwd-map (kbd "<C-g>") 'abort-recursive-edit)
(define-key read-passwd-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-passwd-map (kbd "<C-M-k>") 'next-history-element)
(define-key read-passwd-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key read-passwd-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(provide 'jd:subr-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/subr.elc
;; 
;; read-passwd-map
;; ---------------
;; key             binding
;; ---             -------
;; 
;; C-g             minibuffer-keyboard-quit
;; TAB             self-insert-command
;; C-j             exit-minibuffer
;; RET             exit-minibuffer
;; C-u             delete-minibuffer-contents
;; ESC             Prefix Command
;; <C-tab>         file-cache-minibuffer-complete
;; <XF86Back>      previous-history-element
;; <XF86Forward>   next-history-element
;; <down>          next-line-or-history-element
;; <next>          next-history-element
;; <prior>         previous-history-element
;; <up>            previous-line-or-history-element
;; 
;; ESC n           next-history-element
;; ESC p           previous-history-element
;; ESC r           previous-matching-history-element
;; ESC s           next-matching-history-element
