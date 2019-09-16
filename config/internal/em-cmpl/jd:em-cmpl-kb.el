(defun jd:eshell-cmpl-mode-map ()
  (setf (cdr eshell-cmpl-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-cmpl-mode-map)

(provide 'jd:em-cmpl-kb.el)
