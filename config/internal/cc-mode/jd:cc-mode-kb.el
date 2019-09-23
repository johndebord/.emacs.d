(setf (cdr awk-mode-map) nil)
(setf (cdr c-c++-menu) nil)
(setf (cdr c-awk-menu) nil)
(setf (cdr c-c-menu) nil)
(setf (cdr c-idl-menu) nil)
(setf (cdr c-java-menu) nil)
(setf (cdr c-mode-base-map) nil)
(setf (cdr c-mode-map) nil)
(setf (cdr c-objc-menu) nil)
(setf (cdr c-pike-menu) nil)
(setf (cdr idl-mode-map) nil)
(setf (cdr java-mode-map) nil)
(setf (cdr objc-mode-map) nil)
(setf (cdr pike-mode-map) nil)

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
