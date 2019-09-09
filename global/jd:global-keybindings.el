(defun jd:copy-line-and-goto-beg ()
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (back-to-indentation)
  (message "Line copied"))

(defun jd:copy-line-and-goto-end ()
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (end-of-line)
  (message "Line copied"))

(defun jd:self-insert-space ()
  (interactive)
  (insert " "))

(defun jd:backward-transpose-char-right ()
  (interactive)
  (transpose-chars -1))

(defun jd:transpose-char-right ()
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars 1))
  (forward-char))

(defun jd:transpose-char-left ()
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars -1))
  (backward-char))

(defun jd:transpose-line-up ()
  (interactive)
  (save-excursion
    (next-line)
    (transpose-lines -1))
  (previous-line))

(defun jd:transpose-line-down ()
  (interactive)
  (save-excursion
    (next-line)
    (transpose-lines 1))
  (next-line))

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

(defun jd:forward-delete-word (argument)
  (interactive "p")
  (jd:delete-word (+ argument)))

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

(defun jd:swap-buffers ()
  (interactive)
  (switch-to-buffer nil))

(defun jd:indent-region ()
  "[ ] Check if the cursor jumps out of the current function; if it
    does, let the user know and don't execute the function.
   [ ] Get this to work in other modes as well; in particuluar,
   `fundamental-mode'.
   [ ] Currently, this is a little buggy when in `c++-mode'; fix this
    behavior."
  (interactive)
  (save-excursion
    (beginning-of-defun)
    (set-mark (point))
    (end-of-defun)
    (indent-for-tab-command)))

;;; `global-map' --- `subr.el'
(define-key global-map (kbd "<jd:C-bks>") 'jd:backward-delete-word)
(define-key global-map (kbd "<C-a>") 'mark-whole-buffer)
(define-key global-map (kbd "<C-g>") 'keyboard-quit)
(define-key global-map (kbd "<C-i>") 'jd:scroll-up)
(define-key global-map (kbd "<C-k>") 'jd:scroll-down)
(define-key global-map (kbd "<C-j>") 'backward-sexp)
(define-key global-map (kbd "<C-l>") 'forward-sexp)
(define-key global-map (kbd "<C-n>") 'jd:transpose-line-down)
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

(define-key global-map (kbd "<jd:C-S-bks>") 'jd:forward-delete-word)
(define-key global-map (kbd "<C-S-n>") 'jd:transpose-line-up)
(define-key global-map (kbd "<C-S-t>") 'split-window-below)

(define-key global-map (kbd "<jd:M-bks>") 'delete-char)
(define-key global-map (kbd "<jd:M-ret>") 'open-line)
(define-key global-map (kbd "<jd:M-spc>") 'jd:swap-buffers)
(define-key global-map (kbd "<M-f>") 'counsel-find-file)
(define-key global-map (kbd "<M-h>") 'xref-find-definitions-other-window)
(define-key global-map (kbd "<M-i>") 'previous-line)
(define-key global-map (kbd "<M-j>") 'backward-char)
(define-key global-map (kbd "<M-k>") 'next-line)
(define-key global-map (kbd "<M-l>") 'forward-char)
(define-key global-map (kbd "<M-n>") 'jd:transpose-char-right)
(define-key global-map (kbd "<M-o>") 'end-of-line)
(define-key global-map (kbd "<M-u>") 'back-to-indentation)
(define-key global-map (kbd "<M-w>") 'delete-other-windows)
(define-key global-map (kbd "<M-x>") 'counsel-M-x)
(define-key global-map (kbd "<M-;>") 'recenter)

(define-key global-map (kbd "<M-S-n>") 'jd:transpose-char-left)

(define-key global-map (kbd "<C-M-f>") 'ivy-switch-buffer)
(define-key global-map (kbd "<C-M-h>") 'xref-find-references)
(define-key global-map (kbd "<C-M-j>") 'backward-word)
(define-key global-map (kbd "<C-M-l>") 'forward-word)
(define-key global-map (kbd "<C-M-n>") 'transpose-words)
(define-key global-map (kbd "<C-M-o>") 'next-error)
(define-key global-map (kbd "<C-M-u>") 'previous-error)

(define-key global-map (kbd "<C-h> a") 'counsel-apropos)
(define-key global-map (kbd "<C-h> b") 'describe-bindings)
(define-key global-map (kbd "<C-h> c") 'apropos-command)
(define-key global-map (kbd "<C-h> d") 'apropos-documentation)
(define-key global-map (kbd "<C-h> f") 'counsel-describe-function)
(define-key global-map (kbd "<C-h> k") 'describe-key)
(define-key global-map (kbd "<C-h> l") 'view-lossage)
(define-key global-map (kbd "<C-h> m") 'describe-mode)
(define-key global-map (kbd "<C-h> p") 'describe-package)
(define-key global-map (kbd "<C-h> s") 'describe-symbol)
(define-key global-map (kbd "<C-h> v") 'counsel-describe-variable)
(define-key global-map (kbd "<C-h> y") 'jd:describe-keymap)

(define-key global-map (kbd "<C-x> <jd:bks>") 'jd:delete-line)
(define-key global-map (kbd "<C-x> <jd:tab>") 'jd:indent-region)
(define-key global-map (kbd "<C-x> <f4>") 'kmacro-edit-macro)
(define-key global-map (kbd "<C-x> <M-x>") 'eval-expression)
(define-key global-map (kbd "<C-x> o") 'jd:copy-line-and-goto-end)
(define-key global-map (kbd "<C-x> u") 'jd:copy-line-and-goto-beg)
(define-key global-map (kbd "<C-x> r") 'point-to-register)

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
(define-key global-map (kbd "<f2>") 'eshell)
(define-key global-map (kbd "<f3>") 'kmacro-start-macro)
(define-key global-map (kbd "<f4>") 'kmacro-end-or-call-macro)
(define-key global-map (kbd "<f10>") 'sr-speedbar-toggle)
(define-key global-map (kbd "<f12>") 'scroll-lock-mode)

;;; Weird Mac keybind
(define-key global-map (kbd "<C-tab>") 'jd:backward-window)

;;; Seperate OS specific configurations in a cleaner way
(cond
 ((string-equal system-type "darwin")
  (progn
    (define-key global-map (kbd "<wheel-up>") 'mwheel-scroll)
    (define-key global-map (kbd "<wheel-down>") 'mwheel-scroll)))
 ((string-equal system-type "gnu/linux")
  (progn
    (define-key global-map (kbd "<mouse-4>") 'mwheel-scroll)
    (define-key global-map (kbd "<mouse-5>") 'mwheel-scroll))))
(define-key global-map (kbd "<mouse-1>") 'mouse-set-point)
(define-key global-map (kbd "<wheel-left>") '(lambda () (interactive) (scroll-right 1)))
(define-key global-map (kbd "<wheel-right>") '(lambda () (interactive) (scroll-left 1)))
(define-key global-map (kbd "<down-mouse-1>") 'mouse-drag-region)
(define-key global-map (kbd "<drag-mouse-1>") 'mouse-set-region)
(define-key global-map (kbd "<vertical-line> <down-mouse-1>") 'mouse-drag-vertical-line)
(define-key global-map (kbd "<mode-line> <down-mouse-1>") 'mouse-drag-mode-line)
(define-key global-map (kbd "<mode-line> <mouse-1>") 'mouse-select-window)

;;; `minibuffer-local-map' --- `C source code'
(setf (cdr minibuffer-local-map) nil)
(define-key minibuffer-local-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-map (kbd "<C-M-k>") 'next-history-element)

;;; `minibuffer-local-ns-map' --- `C source code'
(setf (cdr minibuffer-local-ns-map) nil)

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

;;; `minibuffer-local-isearch-map' --- `isearch.el'
(setf (cdr minibuffer-local-isearch-map) nil)

;;; `minibuffer-local-shell-command-map' --- `simple.el'
(setf (cdr minibuffer-local-shell-command-map) nil)
(define-key minibuffer-local-shell-command-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-shell-command-map (kbd "<jd:tab>") 'completion-at-point)
(define-key minibuffer-local-shell-command-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-shell-command-map (kbd "<C-M-k>") 'next-history-element)

;;; `query-replace-map' --- `replace.el'
(setf (cdr query-replace-map) nil)
(define-key query-replace-map (kbd "a") 'automatic)
(define-key query-replace-map (kbd "n") 'skip)
(define-key query-replace-map (kbd "y") 'act)

;;; `read-expression-map' --- `simple.el'
(setf (cdr read-expression-map) nil)
(define-key read-expression-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key read-expression-map (kbd "<jd:tab>") 'completion-at-point)
(define-key read-expression-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key read-expression-map (kbd "<C-M-i>") 'previous-history-element)
(define-key read-expression-map (kbd "<C-M-k>") 'next-history-element)

(provide 'jd:global-keybindings.el)
