(defun jd:abbrev-map ()
  (setf (cdr abbrev-map) nil))
(add-hook 'abbrev-mode-hook 'jd:abbrev-map)

(provide 'jd:bindings-kb.el)
