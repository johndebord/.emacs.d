;;; `xref--button-map' --- `xref.el.el'
(defun jd:xref--button-map ()
  (setf (cdr xref--button-map) nil)
  (define-key xref--button-map (kbd "<mouse-1>") 'xref-show-location-at-point))
(add-hook 'xref--xref-buffer-mode-hook 'jd:xref--button-map)

;;; `xref--transient-buffer-mode-map' --- `xref.el.el'
(defun jd:xref--transient-buffer-mode-map ()
  (setf (cdr xref--transient-buffer-mode-map) nil))
(add-hook 'xref--xref-buffer-mode-hook 'jd:xref--button-map)

;;; `xref--xref-buffer-mode-map' --- `xref.el.el'
(defun jd:xref--xref-buffer-mode-map ()
  (setf (cdr xref--xref-buffer-mode-map) nil)
  (define-key xref--xref-buffer-mode-map (kbd "<jd:ret>") 'xref-show-location-at-point)
  (define-key xref--xref-buffer-mode-map (kbd "<C-x> <C-S-x>") 'xref-query-replace-in-results)
  (define-key xref--xref-buffer-mode-map (kbd "r") 'xref-revert-buffer)
  (define-key xref--xref-buffer-mode-map (kbd "q") 'quit-window))
(add-hook 'xref--xref-buffer-mode-hook 'jd:xref--xref-buffer-mode-map)

(provide 'jd:xref--xref-buffer-mode-keybindings.el)
