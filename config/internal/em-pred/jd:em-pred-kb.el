(defun jd:eshell-pred-mode-map ()
  (setf (cdr eshell-pred-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-pred-mode-map)

(provide 'jd:em-pred-kb.el)
