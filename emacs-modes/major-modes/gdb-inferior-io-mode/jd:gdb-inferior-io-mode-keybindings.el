(provide 'jd:gdb-inferior-io-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gdb-inferior-io-mode-map' --- `gdb-mi.el'
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
