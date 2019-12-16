(setq-default emacs-lisp-mode-map (make-sparse-keymap))
(define-key emacs-lisp-mode-map (kbd "<C-b>") 'jd:eval)
(define-key emacs-lisp-mode-map (kbd "<C-x> b") 'jd:edebug-eval-top-level-form)
(define-key emacs-lisp-mode-map (kbd "<M-y>") 'jd:slurp)
(define-key emacs-lisp-mode-map (kbd "<jd:C-ret>") 'jd:eval-print-last-sexp)
(define-key emacs-lisp-mode-map (kbd "<f1>") 'jd:eval-last-sexp)

(provide 'jd:elisp-mode-kb)

;; File: /usr/local/share/emacs/26.3.50/lisp/progmodes/elisp-mode.elc
;; 
;; emacs-lisp-mode-map
;; -------------------
;; key             binding
;; ---             -------
;; 
;; C-x             Prefix Command
;; ESC             Prefix Command
;; DEL             backward-delete-char-untabify
;; <jd:C-ret>      jd:eval-print-last-sexp
;; 
;; C-x C-a         Prefix Command
;; 
;; ESC TAB         completion-at-point
;; ESC C-q         indent-pp-sexp
;; ESC C-x         eval-defun
;; 
;; ESC C-q         indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; C-x C-a C-c     edebug-go-mode
;; C-x C-a C-l     edebug-where
;; C-x C-a RET     edebug-set-initial-mode
;; C-x C-a C-n     edebug-next-mode
;; C-x C-a C-s     edebug-step-mode
;; 
;; elisp-byte-code-mode-map
;; ------------------------
;; key             binding
;; ---             -------
;; 
;; lisp-interaction-mode-map
;; -------------------------
;; key             binding
;; ---             -------
;; 
;; C-j             eval-print-last-sexp
;; ESC             Prefix Command
;; DEL             backward-delete-char-untabify
;; 
;; ESC TAB         completion-at-point
;; ESC C-q         indent-pp-sexp
;; ESC C-x         eval-defun
;; 
;; ESC C-q         indent-sexp
;;   (that binding is currently shadowed by another mode)
;; 
;; ESC C-q         prog-indent-sexp
;;   (that binding is currently shadowed by another mode)
