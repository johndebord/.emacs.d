(setf (cdr gud-mode-map) nil)
(define-key gud-mode-map (kbd "<M-u>") 'beginning-of-line)
;; (define-key gud-mode-map (kbd "<C-M-i>") 'comint-previous-input)
;; (define-key gud-mode-map (kbd "<C-M-k>") 'comint-next-input)
(define-key gud-mode-map (kbd "<C-M-i>")
  (lambda ()
    (interactive "^")
    (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
        (comint-previous-input 1)
      (progn
        (scroll-down-line 1)
        (forward-line -1)))))
(define-key gud-mode-map (kbd "<C-M-k>")
  (lambda ()
    (interactive "^")
    (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
        (comint-next-input 1)
      (progn
        (scroll-down-line -1)
        (forward-line 1)))))
(define-key gud-mode-map (kbd "<C-c> <C-d>") 'comint-send-eof)
(define-key gud-mode-map (kbd "<C-c> <C-l>") 'jd:gud-clear-buffer)
(define-key gud-mode-map (kbd "<jd:ret>") 'comint-send-input)

(setf (cdr gud-minibuffer-local-map) nil)
(define-key gud-minibuffer-local-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key gud-minibuffer-local-map (kbd "<C-M-i>") 'previous-history-element)
(define-key gud-minibuffer-local-map (kbd "<C-M-k>") 'next-history-element)
(define-key gud-minibuffer-local-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key gud-minibuffer-local-map (kbd "<jd:tab>") 'comint-dynamic-complete-filename)

(provide 'jd:gud-kb.el)

;; gud-minor-mode-map
;; gud-menu-map
;; gud-tool-bar-map
;; gdb-script-mode-map
;; gud-speedbar-key-map
