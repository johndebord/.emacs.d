(define-key messages-buffer-mode-map (kbd "<C-c> <C-l>") 'jd:erase-buffer)

(define-key minibuffer-local-shell-command-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-k>") 'next-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-shell-command-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key minibuffer-local-shell-command-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-shell-command-map (kbd "<jd:C-ret>") 'exit-minibuffer)

(define-key read-expression-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key read-expression-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-expression-map (kbd "<C-M-k>") 'next-history-element)
(define-key read-expression-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key read-expression-map (kbd "<jd:tab>") 'completion-at-point)
(define-key read-expression-map (kbd "<jd:C-ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:S-ret>") 'newline)

(jd:provide-feature jd:simple-kb)
