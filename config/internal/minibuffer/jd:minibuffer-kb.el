;; (defun jd:-map ()
;;   (setf (cdr -map) nil)
;;   (define-key -map (kbd ) '))
;; (add-hook '-mode-hook 'jd:-map)

;;; `minibuffer-local-must-match-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-must-match-map) nil)
(define-key minibuffer-local-must-match-map (kbd "<jd:ret>") 'minibuffer-complete-and-exit)
(define-key minibuffer-local-must-match-map (kbd "<jd:spc>") 'minibuffer-complete-word)
(define-key minibuffer-local-must-match-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-must-match-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-must-match-map (kbd "<C-M-k>") 'next-history-element)

;;; `minibuffer-local-completion-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-completion-map) nil)
(define-key minibuffer-local-completion-map (kbd "<jd:ret>") 'minibuffer-complete-and-exit)
(define-key minibuffer-local-completion-map (kbd "<jd:spc>") 'minibuffer-complete-word)
(define-key minibuffer-local-completion-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-completion-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-completion-map (kbd "<C-M-k>") 'next-history-element)

;;; `minibuffer-inactive-mode-map' --- `minibuffer.el'
(setf (cdr minibuffer-inactive-mode-map) nil)

;;; `minibuffer-local-filename-completion-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-filename-completion-map) nil)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:tab>") 'minibuffer-complete)

;;; `minibuffer-local-filename-must-match-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-filename-must-match-map) nil)

(provide 'jd:minibuffer-kb.el)
