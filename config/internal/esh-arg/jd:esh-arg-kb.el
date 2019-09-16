(defun jd:eshell-arg-mode-map ()
  (setf (cdr eshell-arg-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-arg-mode-map)

(provide 'jd:esh-arg-kb.el)
