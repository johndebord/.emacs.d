(define-key lisp-mode-map (kbd "<C-b>") 'jd:eval)
(define-key lisp-mode-map (kbd "<C-x> b") 'jd:edebug-eval-top-level-form)
(define-key lisp-mode-map (kbd "<jd:C-ret>") 'jd:eval-print-last-sexp)
(define-key lisp-mode-map (kbd "<f1>") 'jd:eval-last-sexp)

(provide 'jd:lisp-mode-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/emacs-lisp/lisp-mode.elc
;; 
;; lisp-mode-map
;; -------------
;; key             binding
;; ---             -------
;; 
;; C-c             Prefix Command
;; ESC             Prefix Command
;; DEL             backward-delete-char-untabify
;; 
;; C-c C-z         run-lisp
;; 
;; ESC C-x         lisp-eval-defun
;; 
;; ESC C-q         indent-sexp
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; lisp-mode-shared-map
;; --------------------
;; key             binding
;; ---             -------
;; 
;; ESC             Prefix Command
;; DEL             backward-delete-char-untabify
;; 
;; ESC C-q         indent-sexp
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
