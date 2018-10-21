(provide 'jd:abbrev-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `abbrev-map' --- `bindings.el'
(defun jd:abbrev-map ()
  (setf (cdr abbrev-map) nil))
(add-hook 'abbrev-mode-hook 'jd:abbrev-map)
