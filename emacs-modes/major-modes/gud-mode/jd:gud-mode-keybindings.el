(provide 'jd:gud-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `gud-mode-map' --- `gud.el'
(defun jd:gud-mode-map ()
  (setf (cdr gud-mode-map) nil)
  (define-key gud-mode-map (kbd "<jd:ret>") 'comint-send-input)
  (define-key gud-mode-map (kbd "<C-M-i>") 'comint-previous-input)
  (define-key gud-mode-map (kbd "<C-M-k>") 'comint-next-input)
  (define-key gud-mode-map (kbd "<C-c> <jd:bks>") 'gud-remove)
  (define-key gud-mode-map (kbd "<C-c> <jd:esc>") 'gud-finish)
  (define-key gud-mode-map (kbd "<C-c> <jd:ret>") 'gud-break)
  (define-key gud-mode-map (kbd "<C-c> c") 'gud-cont)
  (define-key gud-mode-map (kbd "<C-c> i") 'gud-stepi)
  (define-key gud-mode-map (kbd "<C-c> n") 'gud-next)
  (define-key gud-mode-map (kbd "<C-c> s") 'gud-step)
  (define-key gud-mode-map (kbd "<C-c> <C-d>") 'comint-send-eof)
  (define-key gud-mode-map (kbd "<C-c> <C-l>") 'comint-clear-buffer))
(add-hook 'gud-mode-hook 'jd:gud-mode-map)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; `gud-menu-map' --- `gud.el'
;; (defun jd:gud-menu-map ()
;;   (setf (cdr gud-menu-map) nil))
;; (add-hook 'gud-mode-hook 'jd:gud-menu-map)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; `gud-minibuffer-local-map' --- `gud.el'
;; (defun jd:gud-minibuffer-local-map ()
;;   (setf (cdr gud-minibuffer-local-map) nil)
;;   (define-key gud-mode-map (kbd "<jd:tab>") 'comint-dynamic-complete-filename))
;; (add-hook 'gud-mode-hook 'jd:gud-minibuffer-local-map)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; `gud-minor-mode-map' --- `gud.el'
;; (defun jd:gud-minor-mode-map ()
;;   (setf (cdr gud-minior-mode-map) nil))
;; (add-hook 'gud-mode-hook 'jd:gud-minor-mode-map)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; `gud-tool-bar-map' --- `gud.el'
;; (defun jd:gud-tool-bar-map ()
;;   (setf (cdr gud-tool-bar-map) nil))
;; (add-hook 'gud-tool-bar-hook 'jd:gud-tool-bar-map)
