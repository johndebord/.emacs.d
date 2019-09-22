(setq-default eshell-command-map (make-sparse-keymap))

(setq-default eshell-mode-ma (make-sparse-keymap))
(define-key eshell-mode-map (kbd "<jd:ret>") 'jd:eshell-ack-or-send-input)
(define-key eshell-mode-map (kbd "<jd:tab>") 'pcomplete-expand-and-complete)
(define-key eshell-mode-map (kbd "<C-M-i>") 'eshell-previous-input)
(define-key eshell-mode-map (kbd "<C-M-k>") 'eshell-next-input)
(define-key eshell-mode-map (kbd "<C-c> <C-c>") 'eshell-interrupt-process)
(define-key eshell-mode-map (kbd "<C-c> <C-d>") 'eshell-send-eof-to-process)
(define-key eshell-mode-map (kbd "<C-c> <C-l>") 'jd:eshell-clear-buffer)

(provide 'jd:esh-mode-kb.el)
