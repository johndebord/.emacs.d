(defun jd:widget-end-of-line ()
  (interactive "^")
  (widget-end-of-line))

;;; `Custom-mode-map' --- `cus-edit.el'
(defun jd:Custom-mode-map ()
  (setf (cdr Custom-mode-map) nil))
(add-hook 'Custom-mode-hook 'jd:Custom-mode-map)

;;; `custom-field-keymap' --- `cus-edit.el'
(defun jd:custom-field-keymap ()
  (setf (cdr custom-field-keymap) nil)
  (define-key custom-field-keymap (kbd "<jd:tab>") 'widget-forward)
  (define-key custom-field-keymap (kbd "<jd:S-tab>") 'widget-backward)
  (define-key custom-field-keymap (kbd "<M-o>") 'jd:widget-end-of-line)
  (define-key custom-field-keymap (kbd "<M-u>") 'beginning-of-line))
(add-hook 'Custom-mode-hook 'jd:custom-field-keymap)

;;; `custom-mode-link-map' --- `cus-edit.el'
(defun jd:custom-mode-link-map ()
  (setf (cdr custom-mode-link-map) nil))
(add-hook 'Custom-mode-hook 'jd:custom-mode-link-map)

;;; `custom-mode-map' --- `cus-edit.el'
(defun jd:custom-mode-map ()
  (setf (cdr custom-mode-map) nil)
  (define-key custom-mode-map (kbd "<jd:ret>") 'Custom-newline)
  (define-key custom-mode-map (kbd "<jd:tab>") 'widget-forward)
  (define-key custom-mode-map (kbd "<jd:S-tab>") 'widget-backward)
  (define-key custom-mode-map (kbd "<tab>") 'widget-backward)
  (define-key custom-mode-map (kbd "q") 'quit-window))
(add-hook 'Custom-mode-hook 'jd:custom-mode-map)

;;; `custom-tool-bar-map' --- `cus-edit.el'
(defun jd:custom-tool-bar-map ()
  (setf (cdr custom-tool-bar-map) nil))
(add-hook 'Custom-mode-hook 'jd:custom-tool-bar-map)

(provide 'jd:Custom-mode-keybindings.el)
