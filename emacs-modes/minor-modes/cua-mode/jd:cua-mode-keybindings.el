(provide 'jd:cua-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `cua-global-keymap' --- `cua-base.el'
(defun jd:cua-global-keymap ()
  (setf (cdr cua-global-keymap) nil)
  (define-key cua-global-keymap (kbd "<jd:C-S-spc>") 'cua-toggle-global-mark))
(add-hook 'cua-mode-hook 'jd:cua-global-keymap)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `cua--cua-keys-keymap' --- `cua-base.el'
(defun jd:cua--cua-keys-keymap ()
  (setf (cdr cua--cua-keys-keymap) nil)
  (define-key cua--cua-keys-keymap (kbd "<C-v>") 'yank)
  (define-key cua--cua-keys-keymap (kbd "<C-z>") 'undo)
  (define-key cua--cua-keys-keymap (kbd "<C-c> <timeout>") 'copy-region-as-kill)
  (define-key cua--cua-keys-keymap (kbd "<C-x> <timeout>") 'kill-region))
(add-hook 'cua-mode-hook 'jd:cua--cua-keys-keymap)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `cua--prefix-override-keymap' --- `cua-base.el'
(defun jd:cua--prefix-override-keymap ()
  (setf (cdr cua--prefix-override-keymap) nil)
  (define-key cua--prefix-override-keymap (kbd "<C-c>") 'cua--prefix-override-handler)
  (define-key cua--prefix-override-keymap (kbd "<C-x>") 'cua--prefix-override-handler))
(add-hook 'cua-mode-hook 'jd:cua--prefix-override-keymap)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `cua--prefix-repeat-keymap' --- `cua-base.el'
(defun jd:cua--prefix-repeat-keymap ()
  (setf (cdr cua--prefix-repeat-keymap) nil)
  (define-key cua--prefix-repeat-keymap (kbd "<C-c> <C-c>") 'cua--prefix-repeat-handler)
  (define-key cua--prefix-repeat-keymap (kbd "<C-x> <C-x>") 'cua--prefix-repeat-handler))
(add-hook 'cua-mode-hook 'jd:cua--prefix-repeat-keymap)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `cua--global-mark-keymap' --- `cua-base.el'
(defun jd:cua--global-mark-keymap ()
  (setf (cdr cua--global-mark-keymap) nil))
(add-hook 'cua-mode-hook 'jd:cua--global-mark-keymap)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `cua--region-keymap' --- `cua-base.el'
(defun jd:cua--region-keymap ()
  (setf (cdr cua--region-keymap) nil))
(add-hook 'cua-mode-hook 'jd:cua--region-keymap)
