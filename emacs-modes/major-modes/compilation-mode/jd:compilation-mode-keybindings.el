;;; `compilation-mode-map' --- `compile.el'
(defun jd:compilation-mode-map ()
  (setf (cdr compilation-mode-map) nil)
  (define-key compilation-mode-map (kbd "<jd:ret>") 'compile-goto-error)
  (define-key compilation-mode-map (kbd "<jd:spc>") 'compilation-display-error)
  (define-key compilation-mode-map (kbd "<jd:tab>") 'compilation-next-error)
  (define-key compilation-mode-map (kbd "<jd:S-tab>") 'compilation-previous-error)
  (define-key compilation-mode-map (kbd "<C-c> <jd:tab>") 'compilation-next-file)
  (define-key compilation-mode-map (kbd "<C-c> <jd:S-tab>") 'compilation-previous-file)
  (define-key compilation-mode-map (kbd "<C-c> <C-c>") 'kill-compilation))
(add-hook 'compilation-mode-hook 'jd:compilation-mode-map)

;;; `compilation-minor-mode-map' --- `compile.el'
(defun jd:compilation-minor-mode-map ()
  (setf (cdr compilation-minor-mode-map) nil))
(add-hook 'compilation-mode-hook 'jd:compilation-minor-mode-map)

;;; `compilation-shell-minor-mode-map' --- `compile.el'
(defun jd:compilation-shell-minor-mode-map ()
  (setf (cdr compilation-shell-minor-mode-map) nil))
(add-hook 'compilation-mode-hook 'jd:compilation-shell-minor-mode-map)

;;; `compilation-menu-map' --- `compile.el'
(defun jd:compilation-menu-map ()
  (setf (cdr compilation-menu-map) nil))
(add-hook 'compilation-mode-hook 'jd:compilation-menu-map)

;;; `compilation-button-map' --- `compile.el'
(defun jd:compilation-button-map ()
  (setf (cdr compilation-button-map) nil))
(add-hook 'compilation-mode-hook 'jd:compilation-button-map)

;;; `compilation-mode-tool-bar-map' --- `compile.el'
(defun jd:compilation-mode-tool-bar-map ()
  (setf (cdr compilation-mode-tool-bar-map) nil))
(add-hook 'compilation-mode-hook 'jd:compilation-mode-tool-bar-map)

(provide 'jd:compilation-mode-keybindings.el)
