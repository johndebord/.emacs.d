;; (defun jd:-map ()
;;   (setf (cdr -map) nil)
;;   (define-key -map (kbd ) '))
;; (add-hook '-mode-hook 'jd:-map)

;;; `minibuffer-local-map' --- `keymap.c'
(setf (cdr minibuffer-local-map) nil)
(define-key minibuffer-local-map (kbd "<jd:ret>") 'exit-minibuffer)
(define-key minibuffer-local-map (kbd "<jd:tab>") 'minibuffer-complete)
(define-key minibuffer-local-map (kbd "<C-g>") 'minibuffer-keyboard-quit)
(define-key minibuffer-local-map (kbd "<C-M-i>") 'previous-history-element)
(define-key minibuffer-local-map (kbd "<C-M-k>") 'next-history-element)

;;; `minibuffer-local-ns-map' --- `keymap.c'
(setf (cdr minibuffer-local-ns-map) nil)

(provide 'jd:keymap-kb.el)
