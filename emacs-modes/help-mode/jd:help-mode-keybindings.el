(provide 'jd:help-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; help-mode-map
(defun jd:help-mode-map ()
  (setf (cdr help-mode-map) nil)
  (define-key help-mode-map (kbd "<jd:ret>") 'push-button)
  (define-key help-mode-map (kbd "<jd:tab>") 'forward-button)
  (define-key help-mode-map (kbd "<jd:S-tab>") 'backward-button)
  (define-key help-mode-map (kbd "<C-M-i>") 'help-go-forward)
  (define-key help-mode-map (kbd "<C-M-k>") 'help-go-back)
  (define-key help-mode-map (kbd "q") 'quit-window))
(add-hook 'help-mode-hook 'jd:help-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; help-map
(defun jd:help-map ()
  (setf (cdr help-map) nil))
(add-hook 'help-mode-hook 'jd:help-map)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; help-mode-menu
(defun jd:help-mode-menu ()
  (setf (cdr help-mode-menu) nil))
(add-hook 'help-mode-hook 'jd:help-mode-menu)
