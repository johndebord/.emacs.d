(define-key ivy-minibuffer-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key ivy-minibuffer-map (kbd "<C-i>") 'jd:ivy-scroll-down-command)
(define-key ivy-minibuffer-map (kbd "<C-k>") 'jd:ivy-scroll-up-command)
(define-key ivy-minibuffer-map (kbd "<C-o>") 'ivy-end-of-buffer)
(define-key ivy-minibuffer-map (kbd "<C-u>") 'ivy-beginning-of-buffer)
(define-key ivy-minibuffer-map (kbd "<M-;>") 'swiper-recenter-top-bottom)
(define-key ivy-minibuffer-map (kbd "<M-i>") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "<M-j>") 'counsel-up-directory)
(define-key ivy-minibuffer-map (kbd "<M-k>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "<M-l>") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<M-o>") 'end-of-line)
(define-key ivy-minibuffer-map (kbd "<M-u>") 'beginning-of-line)
(define-key ivy-minibuffer-map (kbd "<C-M-i>") 'jd:ivy-previous-history-element)
(define-key ivy-minibuffer-map (kbd "<C-M-k>") 'jd:ivy-next-history-element)
(define-key ivy-minibuffer-map (kbd "<jd:ret>") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<jd:tab>") 'ivy-partial)
(define-key ivy-minibuffer-map (kbd "<jd:C-bks>") 'jd:delete-word-backward)
(define-key ivy-minibuffer-map (kbd "<jd:M-bks>") 'ivy-switch-buffer-kill)
(define-key ivy-minibuffer-map (kbd "<jd:M-ret>") 'jd:preview-function)
(define-key ivy-minibuffer-map (kbd "<down>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "<up>") 'ivy-previous-line)

(jd:provide-feature jd:ivy-kb)
