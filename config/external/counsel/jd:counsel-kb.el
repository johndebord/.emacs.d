(setf (cdr counsel-ag-map) nil)
(setf (cdr counsel-describe-map) nil)
(setf (cdr counsel-git-grep-map) nil)
(setf (cdr counsel-grep-map) nil)
(setf (cdr counsel-imenu-map) nil)
(setf (cdr counsel-mode-map) nil)

(setf (cdr counsel-find-file-map) nil)
(define-key counsel-find-file-map (kbd "<jd:C-bks>") 'counsel-up-directory)
(define-key counsel-find-file-map (kbd "<jd:ret>") 'ivy-alt-done)

(provide 'jd:counsel-kb.el)
