(provide 'jd:ivy-keybindings.el)

(define-key global-map (kbd "<C-x> b") 'ivy-switch-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `ivy-minibuffer-map' --- `ivy.el'
(setf (cdr ivy-minibuffer-map) nil)
(define-key ivy-minibuffer-map (kbd "<jd:ret>") 'ivy-done)
(define-key ivy-minibuffer-map (kbd "<jd:tab>") 'ivy-partial)
(define-key ivy-minibuffer-map (kbd "<mouse-1>") 'ivy-mouse-done)
(define-key ivy-minibuffer-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key ivy-minibuffer-map (kbd "<C-j>") 'ivy-scroll-down-command)
(define-key ivy-minibuffer-map (kbd "<C-l>") 'ivy-scroll-up-command)
(define-key ivy-minibuffer-map (kbd "<C-o>") 'ivy-end-of-buffer)
(define-key ivy-minibuffer-map (kbd "<C-u>") 'ivy-beginning-of-buffer)
(define-key ivy-minibuffer-map (kbd "<M-;>") 'swiper-recenter-top-bottom)
(define-key ivy-minibuffer-map (kbd "<M-i>") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "<M-k>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "<C-M-i>") 'ivy-previous-history-element)
(define-key ivy-minibuffer-map (kbd "<C-M-k>") 'ivy-next-history-element)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `ivy-mode-map' --- `ivy.el'
(setf (cdr ivy-mode-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `ivy-occur-grep-mode-map' --- `ivy.el'
(setf (cdr ivy-occur-grep-mode-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `ivy-occur-mode-map' --- `ivy.el'
(setf (cdr ivy-occur-mode-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `ivy-switch-buffer-map' --- `ivy.el'
(setf (cdr ivy-switch-buffer-map) nil)
