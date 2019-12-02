(setf (cdr ivy-minibuffer-map) nil)
(define-key ivy-minibuffer-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key ivy-minibuffer-map (kbd "<C-i>") 'jd:ivy-scroll-down-command)
(define-key ivy-minibuffer-map (kbd "<C-k>") 'jd:ivy-scroll-up-command)
(define-key ivy-minibuffer-map (kbd "<C-o>") 'ivy-end-of-buffer)
(define-key ivy-minibuffer-map (kbd "<C-u>") 'ivy-beginning-of-buffer)
(define-key ivy-minibuffer-map (kbd "<M-;>") 'swiper-recenter-top-bottom)
(define-key ivy-minibuffer-map (kbd "<M-i>") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "<M-j>") 'counsel-up-directory)
(define-key ivy-minibuffer-map (kbd "<M-l>") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<M-k>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "<M-o>") 'end-of-line)
(define-key ivy-minibuffer-map (kbd "<M-u>") 'beginning-of-line)
(define-key ivy-minibuffer-map (kbd "<C-M-i>") 'ivy-previous-history-element)
(define-key ivy-minibuffer-map (kbd "<C-M-k>") 'ivy-next-history-element)
(define-key ivy-minibuffer-map (kbd "<jd:ret>") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<jd:tab>") 'ivy-partial)
(define-key ivy-minibuffer-map (kbd "<down>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "<up>") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "<mouse-1>") 'ivy-mouse-done)

(provide 'jd:ivy-kb)

;; ivy-mode-map
;; ivy-switch-buffer-map
;; ivy-reverse-i-search-map
;; ivy-occur-mode-map
;; ivy-occur-grep-mode-map
