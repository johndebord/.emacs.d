(setf (cdr completion-in-region-mode-map) nil)
(setf (cdr minibuffer-inactive-mode-map) nil)
(setf (cdr minibuffer-local-must-match-map) nil)

(setf (cdr minibuffer-local-filename-completion-map) nil)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:tab>") 'minibuffer-complete)

(setf (cdr minibuffer-local-completion-map) nil)
(define-key minibuffer-local-completion-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-completion-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-completion-map (kbd "<jd:ret>") 'minibuffer-complete-and-exit)
(define-key minibuffer-local-completion-map (kbd "<jd:spc>") 'minibuffer-complete-word)
(define-key minibuffer-local-completion-map (kbd "<jd:tab>") 'minibuffer-complete)

(setf (cdr minibuffer-local-must-match-map) nil)
(define-key minibuffer-local-must-match-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-must-match-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-must-match-map (kbd "<jd:ret>") 'minibuffer-complete-and-exit)
(define-key minibuffer-local-must-match-map (kbd "<jd:spc>") 'minibuffer-complete-word)
(define-key minibuffer-local-must-match-map (kbd "<jd:tab>") 'minibuffer-complete)

(provide 'jd:minibuffer-kb.el)
