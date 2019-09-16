(defun jd:gdb-breakpoints-mode-map ()
  (setf (cdr gdb-breakpoints-mode-map) nil)
  (define-key gdb-breakpoints-mode-map (kbd "<jd:ret>") 'gdb-goto-breakpoint)
  (define-key gdb-breakpoints-mode-map (kbd "<jd:spc>") 'gdb-toggle-breakpoint)
  (define-key gdb-breakpoints-mode-map (kbd "<jd:bks>") 'gdb-delete-breakpoint))
(add-hook 'gdb-breakpoints-mode-hook 'jd:gdb-breakpoints-mode-map)

(defun jd:gdb-frames-mode-map ()
  (setf (cdr gdb-frames-mode-map) nil)
  (define-key gdb-frames-mode-map (kbd "<jd:ret>") 'gdb-select-frame))
(add-hook 'gdb-frames-mode-hook 'jd:gdb-frames-mode-map)

(defun jd:gdb-inferior-io-mode-map ()
  (setf (cdr gdb-inferior-io-mode-map) nil)
  (define-key gdb-inferior-io-mode-map (kbd "<jd:ret>") 'comint-send-input)
  (define-key gdb-inferior-io-mode-map (kbd "<jd:S-ret>") 'comint-accumulate)
  (define-key gdb-inferior-io-mode-map (kbd "<jd:tab>") 'comint-next-prompt)
  (define-key gdb-inferior-io-mode-map (kbd "<jd:S-tab>") 'comint-previous-prompt)
  (define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-c>") 'gdb-io-interrupt)
  (define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-d>") 'gdb-io-eof)
  (define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-z>") 'gdb-io-stop))
(add-hook 'gdb-inferior-io-mode-hook 'jd:gdb-inferior-io-mode-map)

(defun jd:gdb-locals-mode-map ()
  (setf (cdr gdb-locals-mode-map) nil)
  (define-key gdb-locals-mode-map (kbd "<jd:ret>") 'gdb-edit-locals-value))
(add-hook 'gdb-locals-mode-hook 'jd:gdb-locals-mode-map)

(defun jd:gdb-registers-mode-map ()
  (setf (cdr gdb-registers-mode-map) nil)
  (define-key gdb-registers-mode-map (kbd "<jd:ret>") 'gdb-edit-register-value))
(add-hook 'gdb-registers-mode-hook 'jd:gdb-registers-mode-map)

(defun jd:gdb-threads-mode-map ()
  (setf (cdr gdb-threads-mode-map) nil)
  (define-key gdb-threads-mode-map (kbd "<jd:ret>") 'gdb-select-thread))
(add-hook 'gdb-threads-mode-hook 'jd:gdb-threads-mode-map)

(provide 'jd:gdb-mi-kb.el)
