(defun jd:makefile-mode-map ()
  (setf (cdr makefile-mode-map) nil)
  (define-key makefile-mode-map (kbd "<C-i>") 'makefile-previous-dependency)
  (define-key makefile-mode-map (kbd "<C-k>") 'makefile-next-dependency))
(add-hook 'makefile-mode-hook 'jd:makefile-mode-map)

(provide 'jd:make-mode-kb.el)
