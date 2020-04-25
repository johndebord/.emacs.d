(define-key debugger-mode-map (kbd "i") 'jd:backward-line)
(define-key debugger-mode-map (kbd "k") 'jd:forward-line)
(define-key debugger-mode-map (kbd "<jd:ret>") 'debug-help-follow)
(define-key debugger-mode-map (kbd "<jd:tab>") 'forward-button)
(define-key debugger-mode-map (kbd "<jd:S-tab>") 'backward-button)

(provide 'jd:debug-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/emacs-lisp/debug.elc
;; 
;; debugger-mode-map
;; -----------------
;; key             binding
;; ---             -------
;; 
;; 0 .. 9          digit-argument
;; 
;; TAB             forward-button
;; RET             debug-help-follow
;; ESC             Prefix Command
;; SPC             next-line
;; -               negative-argument
;; R               debugger-record-expression
;; b               debugger-frame
;; c               debugger-continue
;; d               debugger-step-through
;; e               debugger-eval-expression
;; h               describe-mode
;; j               debugger-jump
;; l               debugger-list-functions
;; q               top-level
;; r               debugger-return-value
;; u               debugger-frame-clear
;; v               debugger-toggle-locals
;; <backtab>       backward-button
;; <mouse-2>       push-button
;; <remap>         Prefix Command
;; 
;; ESC TAB         backward-button
