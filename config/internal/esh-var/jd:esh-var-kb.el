(defun jd:eshell-var-mode-map ()
  (setf (cdr eshell-var-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-var-mode-map)

(provide 'jd:esh-var-kb.el)
