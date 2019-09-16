(defun jd:help-map ()
  (setf (cdr help-map) nil))
(add-hook 'help-mode-hook 'jd:help-map)

(defun jd:help-mode-menu ()
  (setf (cdr help-mode-menu) nil))
(add-hook 'help-mode-hook 'jd:help-mode-menu)

(provide 'jd:help-kb.el)
