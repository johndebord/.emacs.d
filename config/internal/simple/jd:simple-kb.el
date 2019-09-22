(setq-default messages-buffer-mode-map (make-sparse-keymap))
(setq-default messages-buffer-mode-map (make-sparse-keymap))
(setq-default process-menu-mode-map (make-sparse-keymap))
(setq-default special-mode-map (make-sparse-keymap))
(setq-default visual-line-mode-map (make-sparse-keymap))

(setq-default completion-list-mode-map (make-sparse-keymap))
(define-key completion-list-mode-map (kbd "<jd:ret>") 'choose-completion)
(define-key completion-list-mode-map (kbd "<jd:tab>") 'next-completion)
(define-key completion-list-mode-map (kbd "<jd:S-tab>") 'previous-completion)
(define-key completion-list-mode-map (kbd "q") 'quit-window)

(setq-default minibuffer-local-shell-command-map (make-sparse-keymap))
(define-key minibuffer-local-shell-command-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-shell-command-map (kbd "<jd:tab>") 'completion-at-point)
(define-key minibuffer-local-shell-command-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-k>") 'next-history-element)

(setq-default read-expression-map (make-sparse-keymap))
(define-key read-expression-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:tab>") 'completion-at-point)
(define-key read-expression-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key read-expression-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-expression-map (kbd "<C-M-k>") 'next-history-element)

(provide 'jd:simple-kb.el)
