(defun jd:completion-list-mode-map ()
  (setf (cdr completion-list-mode-map) nil)
  (define-key completion-list-mode-map (kbd "<jd:ret>") 'choose-completion)
  (define-key completion-list-mode-map (kbd "<jd:tab>") 'next-completion)
  (define-key completion-list-mode-map (kbd "<jd:S-tab>") 'previous-completion)
  (define-key completion-list-mode-map (kbd "q") 'quit-window))
(add-hook 'completion-list-mode-hook 'jd:completion-list-mode-map)

;;; `minibuffer-local-shell-command-map' --- `simple.el'
(setf (cdr minibuffer-local-shell-command-map) nil)
(define-key minibuffer-local-shell-command-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-shell-command-map (kbd "<jd:tab>") 'completion-at-point)
(define-key minibuffer-local-shell-command-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-k>") 'next-history-element)

;;; `read-expression-map' --- `simple.el'
(setf (cdr read-expression-map) nil)
(define-key read-expression-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:tab>") 'completion-at-point)
(define-key read-expression-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key read-expression-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-expression-map (kbd "<C-M-k>") 'next-history-element)

(provide 'jd:simple-kb.el)
