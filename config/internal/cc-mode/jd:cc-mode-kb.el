(setf (cdr c++-mode-map) nil)
(define-key c++-mode-map (kbd "#") 'c-electric-pound)
(define-key c++-mode-map (kbd "(") 'c-electric-paren)
(define-key c++-mode-map (kbd ")") 'c-electric-paren)
(define-key c++-mode-map (kbd "*") 'c-electric-star)
(define-key c++-mode-map (kbd ",") 'c-electric-semi&comma)
(define-key c++-mode-map (kbd "/") 'c-electric-slash)
(define-key c++-mode-map (kbd ":") 'c-electric-colon)
(define-key c++-mode-map (kbd ";") 'c-electric-semi&comma)
(define-key c++-mode-map (kbd "<") 'c-electric-lt-gt)
(define-key c++-mode-map (kbd ">") 'c-electric-lt-gt)
(define-key c++-mode-map (kbd "{") 'c-electric-brace)
(define-key c++-mode-map (kbd "}") 'c-electric-brace)
(define-key c++-mode-map (kbd "<C-b>") 'compile)
(define-key c++-mode-map (kbd "<C-;>") 'c-mark-function)
(define-key c++-mode-map (kbd "<jd:tab>") 'c-indent-line-or-region)

(provide 'jd:cc-mode-kb.el)

;; c-awk-menu
;; c-mode-base-map
;; c-pike-menu
;; objc-mode-map
;; pike-mode-map
;; c-java-menu
;; java-mode-map
;; c-idl-menu
;; c-c-menu
;; c-objc-menu
;; c-c++-menu
;; awk-mode-map
;; idl-mode-map
;; c-mode-map
