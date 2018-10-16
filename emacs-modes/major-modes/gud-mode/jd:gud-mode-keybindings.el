(provide 'jd:gud-mode-keybindings.el)

(require 'gud)

(defun jd:gud-clear-buffer ()
  (interactive)  
  (backward-char 6)
  (if (equal (preceding-char) 0)
      (end-of-line)
    (set-mark-command nil)
    (beginning-of-buffer)
    (backward-delete-char 1)
    (end-of-line)))

;; (defun jd:gud-clear-buffer ()
;;   (interactive)  
;;   (mark-whole-buffer)
;;   (backward-delete-char 1)
;;   (insert "(gdb) "))

(defun jd:gud-start ()
  (interactive)
  (insert "start")
  (comint-send-input))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gud-mode-map' --- `gud.el'
(defun jd:gud-mode-map ()
  (setf (cdr gud-mode-map) nil)
  (define-key gud-mode-map (kbd "<jd:tab>") 'completion-at-point)
  (define-key gud-mode-map (kbd "<jd:ret>") 'comint-send-input)
  (define-key gud-mode-map (kbd "<up>") 'gud-finish)
  (define-key gud-mode-map (kbd "<down>") 'gud-step)
  (define-key gud-mode-map (kbd "<left>") 'jd:gud-start)
  (define-key gud-mode-map (kbd "<right>") 'gud-next)
  (define-key gud-mode-map (kbd "<C-M-i>") 'comint-previous-input)
  (define-key gud-mode-map (kbd "<C-M-k>") 'comint-next-input)
  (define-key gud-mode-map (kbd "<C-c> <jd:bks>") 'gud-remove)
  (define-key gud-mode-map (kbd "<C-c> <jd:ret>") 'gud-break)
  (define-key gud-mode-map (kbd "<C-c> <C-d>") 'comint-send-eof)
  (define-key gud-mode-map (kbd "<C-c> <C-l>") 'jd:gud-clear-buffer))
(add-hook 'gdb-mode-hook 'jd:gud-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gud-menu-map' --- `gud.el'
(defun jd:gud-menu-map ()
  (setf (cdr gud-menu-map) nil))
(add-hook 'gud-mode-hook 'jd:gud-menu-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gud-minibuffer-local-map' --- `gud.el'
(setf (cdr gud-minibuffer-local-map) nil)
(define-key gud-minibuffer-local-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key gud-minibuffer-local-map (kbd "<jd:tab>") 'comint-dynamic-complete-filename)
(define-key gud-minibuffer-local-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key gud-minibuffer-local-map (kbd "<C-M-i>") 'previous-history-element)
(define-key gud-minibuffer-local-map (kbd "<C-M-k>") 'next-history-element)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gud-minor-mode-map' --- `gud.el'
(defun jd:gud-minor-mode-map ()
  (setf (cdr gud-minor-mode-map) nil)
  (define-key gud-minor-mode-map (kbd "<left-fringe> <C-drag-mouse-1>") 'gdb-mouse-jump)
  (define-key gud-minor-mode-map (kbd "<left-fringe> <C-mouse-1>") 'gdb-mouse-toggle-breakpoint-fringe)
  (define-key gud-minor-mode-map (kbd "<left-fringe> <C-mouse-3>") 'gdb-mouse-jump)
  (define-key gud-minor-mode-map (kbd "<left-fringe> <drag-mouse-1>") 'gdb-mouse-until)
  (define-key gud-minor-mode-map (kbd "<left-fringe> <mouse-1>") 'gdb-mouse-set-clear-breakpoint)
  (define-key gud-minor-mode-map (kbd "<left-fringe> <mouse-3>") 'gdb-mouse-until)
  (define-key gud-minor-mode-map (kbd "<left-margin> <C-drag-mouse-1>") 'gdb-mouse-jump)
  (define-key gud-minor-mode-map (kbd "<left-margin> <C-mouse-1>") 'gdb-mouse-toggle-breakpoint-margin)
  (define-key gud-minor-mode-map (kbd "<left-margin> <C-mouse-3>") 'gdb-mouse-jump)
  (define-key gud-minor-mode-map (kbd "<left-margin> <drag-mouse-1>") 'gdb-mouse-until)
  (define-key gud-minor-mode-map (kbd "<left-margin> <mouse-1>") 'gdb-mouse-set-clear-breakpoint)
  (define-key gud-minor-mode-map (kbd "<left-margin> <mouse-3>") 'gdb-mouse-until))
(add-hook 'gud-mode-hook 'jd:gud-minor-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gud-tool-bar-map' --- `gud.el'
(defun jd:gud-tool-bar-map ()
  (setf (cdr gud-tool-bar-map) nil))
(add-hook 'gud-mode-hook 'jd:gud-tool-bar-map)
