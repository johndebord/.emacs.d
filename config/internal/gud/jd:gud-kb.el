(setf (cdr gud-mode-map) nil)
(define-key gud-mode-map (kbd "<C-M-i>") 'comint-previous-input)
(define-key gud-mode-map (kbd "<C-M-k>") 'comint-next-input)
(define-key gud-mode-map (kbd "<C-c> <C-d>") 'comint-send-eof)
(define-key gud-mode-map (kbd "<C-c> <C-l>") 'jd:gud-clear-buffer)
(define-key gud-mode-map (kbd "<C-c> <jd:bks>") 'gud-remove)
(define-key gud-mode-map (kbd "<C-c> <jd:ret>") 'gud-break)
(define-key gud-mode-map (kbd "<jd:ret>") 'comint-send-input)
(define-key gud-mode-map (kbd "<jd:tab>") 'completion-at-point)
(define-key gud-mode-map (kbd "<down>") 'gud-step)
(define-key gud-mode-map (kbd "<left>") 'jd:gud-start)
(define-key gud-mode-map (kbd "<right>") 'gud-next)
(define-key gud-mode-map (kbd "<up>") 'gud-finish)

(setf (cdr gud-minibuffer-local-map) nil)
(define-key gud-minibuffer-local-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key gud-minibuffer-local-map (kbd "<C-M-i>") 'previous-history-element)
(define-key gud-minibuffer-local-map (kbd "<C-M-k>") 'next-history-element)
(define-key gud-minibuffer-local-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key gud-minibuffer-local-map (kbd "<jd:tab>") 'comint-dynamic-complete-filename)

(setf (cdr gud-minor-mode-map) nil)
(define-key gud-minor-mode-map (kbd "<left-fringe> <mouse-1>") 'gdb-mouse-set-clear-breakpoint)
(define-key gud-minor-mode-map (kbd "<left-fringe> <mouse-3>") 'gdb-mouse-until)
(define-key gud-minor-mode-map (kbd "<left-margin> <mouse-1>") 'gdb-mouse-set-clear-breakpoint)
(define-key gud-minor-mode-map (kbd "<left-margin> <mouse-3>") 'gdb-mouse-until)
(define-key gud-minor-mode-map (kbd "<left-fringe> <drag-mouse-1>") 'gdb-mouse-until)
(define-key gud-minor-mode-map (kbd "<left-margin> <drag-mouse-1>") 'gdb-mouse-until)
(define-key gud-minor-mode-map (kbd "<left-fringe> <C-mouse-1>") 'gdb-mouse-toggle-breakpoint-fringe)
(define-key gud-minor-mode-map (kbd "<left-fringe> <C-mouse-3>") 'gdb-mouse-jump)
(define-key gud-minor-mode-map (kbd "<left-margin> <C-mouse-1>") 'gdb-mouse-toggle-breakpoint-margin)
(define-key gud-minor-mode-map (kbd "<left-margin> <C-mouse-3>") 'gdb-mouse-jump)
(define-key gud-minor-mode-map (kbd "<left-fringe> <C-drag-mouse-1>") 'gdb-mouse-jump)
(define-key gud-minor-mode-map (kbd "<left-margin> <C-drag-mouse-1>") 'gdb-mouse-jump)

(provide 'jd:gud-kb.el)

;; gud-menu-map
;; gud-tool-bar-map
;; gdb-script-mode-map
;; gud-speedbar-key-map
