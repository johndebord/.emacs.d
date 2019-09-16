(defun jd:eshell-proc-mode-map ()
  (setf (cdr eshell-proc-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-proc-mode-map)

(provide 'jd:esh-proc-kb.el)
