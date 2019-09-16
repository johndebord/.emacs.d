(defun jd:view-mode-map ()
  (setf (cdr view-mode-map) nil)
  (define-key Buffer-menu-mode-map (kbd "q") 'quit-window))
(add-hook 'view-mode-hook 'jd:view-mode-map)

(provide 'jd:view-kb.el)
