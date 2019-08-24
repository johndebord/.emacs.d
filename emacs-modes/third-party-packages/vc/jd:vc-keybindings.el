(provide 'jd:vc-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `map' --- `.el'
(setf (cdr ivy-minibuffer-map) nil)
(define-key ivy-minibuffer-map (kbd "<jd:ret>") 'ivy-done)
