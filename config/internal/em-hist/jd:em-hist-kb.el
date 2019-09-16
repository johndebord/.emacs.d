(defun jd:eshell-hist-mode-map ()
  (setf (cdr eshell-hist-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-hist-mode-map)

(defun jd:eshell-isearch-map ()
  (setf (cdr eshell-isearch-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-isearch-map)

(provide 'jd:em-hist-kb.el)
