(provide 'jd:global-keybindings.el)

(defun jd:self-insert-space ()
  (interactive)
  (insert " "))

(defun jd:backward-transpose-chars ()
  (interactive)
  (transpose-chars -1))

(defun jd:backward-transpose-words ()
  (interactive)
  (transpose-words -1))

(defun jd:backward-transpose-lines ()
  (interactive)
  (transpose-lines -1))

(defun jd:delete-line (argument)
  (interactive "p")
  (beginning-of-line)
  (delete-region (point) (progn (end-of-line) (point)))
  (delete-backward-char 1))

(defun jd:delete-word (argument)
  (interactive "p")
  (delete-region (point) (progn (forward-word argument) (point))))

(defun jd:backward-delete-word (argument)
  (interactive "p")
  (jd:delete-word (- argument)))

(defun jd:forward-window ()
  (interactive)
  (other-window  1))

(defun jd:backward-window ()
  (interactive)
  (other-window -1))

(defun jd:scroll-up ()
  (interactive "^")
  (recenter)
  (scroll-down-command)
  (move-to-window-line nil))

(defun jd:scroll-down ()
  (interactive "^")
  (recenter)
  (scroll-up-command)
  (move-to-window-line nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `global-map' --- `subr.el'
(define-key global-map (kbd "<jd:C-bks>") 'jd:backward-delete-word)
(define-key global-map (kbd "<jd:C-spc>") 'cua-set-mark) 
(define-key global-map (kbd "<C-a>") 'mark-whole-buffer)
(define-key global-map (kbd "<C-g>") 'keyboard-quit)
(define-key global-map (kbd "<C-j>") 'jd:scroll-up)
(define-key global-map (kbd "<C-l>") 'jd:scroll-down)
(define-key global-map (kbd "<C-n>") 'transpose-lines)
(define-key global-map (kbd "<C-o>") 'end-of-buffer)
(define-key global-map (kbd "<C-q>") 'quoted-insert)
(define-key global-map (kbd "<C-r>") 'jump-to-register)
(define-key global-map (kbd "<C-s>") 'save-buffer)
(define-key global-map (kbd "<C-t>") 'split-window-right)
(define-key global-map (kbd "<C-u>") 'beginning-of-buffer)
(define-key global-map (kbd "<C-w>") 'delete-window)
(define-key global-map (kbd "<C-/>") 'comment-region)
(define-key global-map (kbd "<C-?>") 'uncomment-region)

(define-key global-map (kbd "<jd:S-bks>") 'delete-backward-char)

(define-key global-map (kbd "<jd:C-S-bks>") 'zap-to-char)
(define-key global-map (kbd "<C-S-n>") 'jd:backward-transpose-lines)
(define-key global-map (kbd "<C-S-t>") 'split-window-below)

(define-key global-map (kbd "<jd:M-bks>") 'delete-char)
(define-key global-map (kbd "<jd:M-ret>") 'open-line)
(define-key global-map (kbd "<M-i>") 'previous-line)
(define-key global-map (kbd "<M-j>") 'backward-char)
(define-key global-map (kbd "<M-k>") 'next-line)
(define-key global-map (kbd "<M-l>") 'forward-char)
(define-key global-map (kbd "<M-n>") 'transpose-chars)
(define-key global-map (kbd "<M-o>") 'end-of-line)
(define-key global-map (kbd "<M-u>") 'back-to-indentation)
(define-key global-map (kbd "<M-w>") 'delete-other-windows)
(define-key global-map (kbd "<M-;>") 'recenter)

(define-key global-map (kbd "<M-S-n>") 'jd:backward-transpose-chars)

(define-key global-map (kbd "<C-M-j>") 'backward-word)
(define-key global-map (kbd "<C-M-l>") 'forward-word)
(define-key global-map (kbd "<C-M-n>") 'transpose-words)
(define-key global-map (kbd "<C-M-o>") 'next-error)
(define-key global-map (kbd "<C-M-u>") 'previous-error)

(define-key global-map (kbd "<C-M-S-n>") 'jd:backward-transpose-words)

(define-key global-map (kbd "<C-h> b") 'describe-bindings)
(define-key global-map (kbd "<C-h> c") 'apropos-command)
(define-key global-map (kbd "<C-h> d") 'apropos-documentation)
(define-key global-map (kbd "<C-h> k") 'describe-key)
(define-key global-map (kbd "<C-h> l") 'view-lossage)
(define-key global-map (kbd "<C-h> m") 'describe-mode)
(define-key global-map (kbd "<C-h> p") 'describe-package)
(define-key global-map (kbd "<C-h> s") 'describe-symbol)

(define-key global-map (kbd "<C-x> <jd:bks>") 'jd:delete-line)
(define-key global-map (kbd "<C-x> <jd:tab>") 'completion-at-point)
(define-key global-map (kbd "<C-x> <f1>") 'eval-expression)
(define-key global-map (kbd "<C-x> <f4>") 'kmacro-edit-macro)
(define-key global-map (kbd "<C-x> r") 'point-to-register)

(define-key global-map (kbd "<C-x> <jd:C-tab>") 'dabbrev-expand)
(define-key global-map (kbd "<C-x> <C-b>") 'buffer-menu)
(define-key global-map (kbd "<C-x> <C-c>") 'save-buffers-kill-terminal)
(define-key global-map (kbd "<C-x> <C-s>") 'write-file)
(define-key global-map (kbd "<C-x> <C-w>") 'kill-buffer)

(define-key global-map (kbd "<C-x> <C-S-w>") 'delete-frame)

(define-key global-map (kbd "<jd:bks>") 'delete-backward-char)
(define-key global-map (kbd "<jd:ret>") 'newline)
(define-key global-map (kbd "<jd:spc>") 'jd:self-insert-space)
(define-key global-map (kbd "<jd:tab>") 'indent-for-tab-command)
(define-key global-map (kbd "<jd:C-tab>") 'jd:forward-window)
(define-key global-map (kbd "<jd:C-S-tab>") 'jd:backward-window)
(define-key global-map (kbd "<down>") 'next-line)
(define-key global-map (kbd "<left>") 'backward-char)
(define-key global-map (kbd "<right>") 'forward-char)
(define-key global-map (kbd "<up>") 'previous-line)
(define-key global-map (kbd "<f1>") 'eval-last-sexp)
(define-key global-map (kbd "<f2>") 'eshell)
(define-key global-map (kbd "<f3>") 'kmacro-start-macro)
(define-key global-map (kbd "<f4>") 'kmacro-end-or-call-macro)
(define-key global-map (kbd "<f12>") 'scroll-lock-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Weird Mac Keybinds; fix later
(define-key global-map (kbd "<C-tab>") 'jd:backward-window)
(define-key input-decode-map (kbd "s-t")  [\s-\t])
(define-key global-map (kbd "<s-t>") 'split-window-right)
(define-key input-decode-map (kbd "C-t")  [\C-\t])
(define-key global-map (kbd "<C-t>") 'split-window-below)

(define-key global-map (kbd "<mouse-1>") 'mouse-set-point)
(define-key global-map (kbd "<wheel-up>") 'mwheel-scroll)
(define-key global-map (kbd "<wheel-down>") 'mwheel-scroll)
(define-key global-map (kbd "<wheel-left>") '(lambda () (interactive) (scroll-right 1)))
(define-key global-map (kbd "<wheel-right>") '(lambda () (interactive) (scroll-left 1)))
(define-key global-map (kbd "<down-mouse-1>") 'mouse-drag-region)
(define-key global-map (kbd "<drag-mouse-1>") 'mouse-set-region)
(define-key global-map (kbd "<vertical-line> <down-mouse-1>") 'mouse-drag-vertical-line)
(define-key global-map (kbd "<mode-line> <down-mouse-1>") 'mouse-drag-mode-line)
(define-key global-map (kbd "<mode-line> <mouse-1>") 'mouse-select-window)

;; <MOUSE-FUNCTIONALITY>
;; Will probably need these in the future for setting breakpoints in debugging
;; <right-fringe> <mouse-1> mouse--strip-first-event
;; <right-fringe> <mouse-2> mouse--strip-first-event
;; <right-fringe> <mouse-3> mouse--strip-first-event
;; <left-fringe>  <mouse-1> mouse--strip-first-event
;; <left-fringe>  <mouse-2> mouse--strip-first-event
;; <left-fringe>  <mouse-3> mouse--strip-first-event

;; <MOUSE-FUNCTION-KEY>
;; (for in the future when I get the hang of Elisp)
;; (define-key global-map (kbd "<jd:m1>")              'mouse-set-point)
;; (define-key global-map (kbd "<jd:m4>")              'mwheel-scroll)
;; (define-key global-map (kbd "<jd:m5>")              'mwheel-scroll)
;; (define-key global-map (kbd "<jd:down-m1>")         'mouse-drag-region)
;; (define-key global-map (kbd "<jd:drag-m1>")         'mouse-set-region)
;; (define-key global-map (kbd "<jd:vl> <jd:down-m1>") 'mouse-drag-vertical-line)
;; (define-key global-map (kbd "<jd:ml> <jd:down-m1>") 'mouse-drag-mode-line)
;; (define-key global-map (kbd "<jd:ml> <jd:m1>")      'mouse-select-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-map' --- `C source code'
(setf (cdr minibuffer-local-map) nil)
(define-key minibuffer-local-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-map (kbd "<C-M-k>") 'next-history-element)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-ns-map' --- `C source code'
(setf (cdr minibuffer-local-ns-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-must-match-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-must-match-map) nil)
(define-key minibuffer-local-must-match-map (kbd "<jd:ret>") 'minibuffer-complete-and-exit)
(define-key minibuffer-local-must-match-map (kbd "<jd:spc>") 'minibuffer-complete-word)
(define-key minibuffer-local-must-match-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-must-match-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-must-match-map (kbd "<C-M-k>") 'next-history-element)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-completion-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-completion-map) nil)
(define-key minibuffer-local-completion-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-completion-map (kbd "<C-g>") 'minibuffer-keyboard-quit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-inactive-mode-map' --- `minibuffer.el'
(setf (cdr minibuffer-inactive-mode-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-filename-completion-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-filename-completion-map) nil)
(define-key minibuffer-local-filename-completion-map (kbd "<jd:tab>") 'minibuffer-complete)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-filename-must-match-map' --- `minibuffer.el'
(setf (cdr minibuffer-local-filename-must-match-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-isearch-map' --- `isearch.el'
(setf (cdr minibuffer-local-isearch-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `minibuffer-local-shell-command-map' --- `simple.el'
(setf (cdr minibuffer-local-shell-command-map) nil)
(define-key minibuffer-local-shell-command-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-shell-command-map (kbd "<jd:tab>") 'completion-at-point)
(define-key minibuffer-local-shell-command-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-k>") 'next-history-element)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `query-replace-map' --- `replace.el'
(setf (cdr query-replace-map) nil)
(define-key query-replace-map (kbd "a") 'automatic)
(define-key query-replace-map (kbd "n") 'skip)
(define-key query-replace-map (kbd "y") 'act)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `read-expression-map' --- `simple.el'
(setf (cdr read-expression-map) nil)
(define-key read-expression-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:tab>") 'completion-at-point)
(define-key read-expression-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key read-expression-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-expression-map (kbd "<C-M-k>") 'next-history-element)
