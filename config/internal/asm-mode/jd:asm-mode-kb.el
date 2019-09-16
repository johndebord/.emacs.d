(defun jd:asm-mode-map ()
  (setf (cdr asm-mode-map) nil))
(add-hook 'asm-mode-hook 'jd:asm-mode-map)

(provide 'jd:asm-mode-kb.el)
