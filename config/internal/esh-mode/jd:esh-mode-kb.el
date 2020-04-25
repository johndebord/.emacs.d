;; Hack to get `eshell-mode-map` working correctly; not entirely sure why.
(setq-default eshell-mode-map (make-sparse-keymap))

(define-key eshell-mode-map (kbd "<M-u>") 'jd:eshell-beginning-of-line-or-prompt)
(define-key eshell-mode-map (kbd "<C-M-i>") 'jd:eshell-previous-input)
(define-key eshell-mode-map (kbd "<C-M-k>") 'jd:eshell-next-input)
(define-key eshell-mode-map (kbd "<C-c> <C-c>") 'eshell-interrupt-process)
(define-key eshell-mode-map (kbd "<C-c> <C-d>") 'eshell-send-eof-to-process)
(define-key eshell-mode-map (kbd "<C-c> <C-l>") 'jd:eshell-clear-buffer)
(define-key eshell-mode-map (kbd "<C-c> <C-r>") 'jd:counsel-esh-history)
(define-key eshell-mode-map (kbd "<jd:ret>") 'jd:incredibly-smart-return)
(define-key eshell-mode-map (kbd "<jd:tab>") 'jd:incredibly-smart-tab-eshell)

(provide 'jd:esh-mode-kb)

;; `eshell` seems to be implemented very unconventionally.
;; File: $HOME/install/share/emacs/26.3.50/lisp/eshell/esh-mode.elc
