;; ;;; `ac-complete-mode-map' --- `auto-complete.el'
;; (defun jd:ac-complete-mode-map ()
;;   (setf (cdr ac-complete-mode-map) nil)
;;   (define-key 'jd:ac-complete-mode-map (kbd "1") 'ac-expand))
;; (add-hook 'auto-complete-mode-hook 'jd:ac-complete-mode-map)

;; ;;; `ac-completing-map' --- `auto-complete.el'
;; (defun jd:ac-completing-map ()
;;   (setf (cdr ac-completing-map) nil)
;;   (define-key jd:ac-completing-map (kbd "") '))
;; (add-hook 'auto-complete-mode-hook 'jd:ac-completing-map)

;; ;;; `ac-current-map' --- `auto-complete.el'
;; (defun jd:ac-current-map ()
;;   (setf (cdr ac-current-map) nil)
;;   (define-key jd:ac-current-map (kbd "") '))
;; (add-hook 'auto-complete-mode-hook 'jd:ac-current-map)

;; ;;; `ac-menu-map' --- `auto-complete.el'
;; (defun jd:ac-menu-map ()
;;   (setf (cdr ac-menu-map) nil)
;;   (define-key jd:ac-menu-map (kbd "") '))
;; (add-hook 'auto-complete-mode-hook 'jd:ac-menu-map)

;; ;;; `ac-mode-map' --- `auto-complete.el'
;; (defun jd:ac-mode-map ()
;;   (setf (cdr ac-mode-map) nil)
;;   (define-key jd:ac-mode-map (kbd "") '))
;; (add-hook 'auto-complete-mode-hook 'jd:ac-mode-map)

(provide 'jd:auto-complete-mode-keybindings.el)
