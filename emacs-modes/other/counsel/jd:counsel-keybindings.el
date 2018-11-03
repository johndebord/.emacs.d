(provide 'jd:counsel-keybindings.el)

(define-key global-map (kbd "<M-x>") 'counsel-M-x)
(define-key global-map (kbd "<C-h> v") 'counsel-describe-variable)
(define-key global-map (kbd "<C-h> f") 'counsel-describe-function)
(define-key global-map (kbd "<C-h> a") 'counsel-apropos)
(define-key global-map (kbd "<C-x> <C-f>") 'counsel-find-file)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `counsel-ag-map' --- `counsel.el'
(setf (cdr counsel-ag-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `counsel-describe-map' --- `counsel.el'
(setf (cdr counsel-describe-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `counsel-find-file-map' --- `counsel.el'
(setf (cdr counsel-find-file-map) nil)
(define-key counsel-find-file-map (kbd "<jd:ret>") 'ivy-alt-done)
(define-key counsel-find-file-map (kbd "<jd:C-bks>") 'counsel-up-directory)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `counsel-git-grep-map' --- `counsel.el'
(setf (cdr counsel-git-grep-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `counsel-grep-map' --- `counsel.el'
(setf (cdr counsel-grep-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `counsel-imenu-map' --- `counsel.el'
(setf (cdr counsel-imenu-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `counsel-mode-map' --- `counsel.el'
(setf (cdr counsel-mode-map) nil)
