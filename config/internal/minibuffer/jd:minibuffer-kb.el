(define-key minibuffer-local-completion-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-completion-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-completion-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-completion-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-completion-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-completion-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(define-key minibuffer-local-filename-completion-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-filename-completion-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-filename-completion-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(define-key minibuffer-local-must-match-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-must-match-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-must-match-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-must-match-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-must-match-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-must-match-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(jd:provide-feature jd:minibuffer-kb)
