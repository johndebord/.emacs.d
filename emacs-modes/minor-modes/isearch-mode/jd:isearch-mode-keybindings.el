(provide 'jd:isearch-mode-keybindings.el)

(defun jd:isearch-printing-space ()
  (interactive)
  (isearch-printing-char #x20))

(defun jd:isearch-printing-tab ()
  (interactive)
  (isearch-printing-char #x9))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `isearch-mode-map' --- `isearch.el'
(defun jd:isearch-mode-map ()
  (setq jd:temp-isearch-mode-map (make-sparse-keymap))
  (substitute-key-definition
   'isearch-printing-char 'isearch-printing-char jd:temp-isearch-mode-map isearch-mode-map)
  (setf (cdr isearch-mode-map) nil)
  (substitute-key-definition
   'isearch-printing-char 'isearch-printing-char isearch-mode-map jd:temp-isearch-mode-map)
  (define-key isearch-mode-map (kbd "TAB") nil)
  (define-key isearch-mode-map (kbd "<jd:bks>") 'isearch-delete-char)
  (define-key isearch-mode-map (kbd "<jd:spc>") 'jd:isearch-printing-space)
  (define-key isearch-mode-map (kbd "<jd:tab>") 'jd:isearch-printing-tab)
  (define-key isearch-mode-map (kbd "<jd:ret>") 'isearch-exit)
  (define-key isearch-mode-map (kbd "<C-g>") 'isearch-abort)
  (define-key isearch-mode-map (kbd "<C-j>") 'isearch-repeat-backward)
  (define-key isearch-mode-map (kbd "<C-l>") 'isearch-repeat-forward)
  (define-key isearch-mode-map (kbd "<C-t>") 'isearch-toggle-case-fold)
  (define-key isearch-mode-map (kbd "<C-v>") 'isearch-yank-kill)
  (define-key isearch-mode-map (kbd "<C-x> <jd:tab>") 'isearch-complete))
(add-hook 'isearch-mode-hook 'jd:isearch-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `isearch-help-map' --- `isearch.el'
(defun jd:isearch-help-map ()
  (setf (cdr isearch-help-map) nil))
(add-hook 'isearch-mode-hook 'jd:isearch-help-map)
