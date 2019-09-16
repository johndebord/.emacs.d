(defun jd:eshell-prompt-mode-map ()
  (setf (cdr eshell-prompt-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-prompt-mode-map)

(provide 'jd:em-prompt-kb.el)
