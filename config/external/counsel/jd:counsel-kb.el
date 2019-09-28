(setf (cdr counsel-find-file-map) nil)
(define-key counsel-find-file-map (kbd "<jd:C-bks>") 'counsel-up-directory)
(define-key counsel-find-file-map (kbd "<jd:ret>") 'ivy-alt-done)

(provide 'jd:counsel-kb.el)

;; counsel-ag-map
;; counsel-imenu-map
;; counsel-git-grep-map
;; counsel-grep-map
;; counsel-describe-map
;; counsel-mode-map
