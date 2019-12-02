(setf (cdr query-replace-map) nil)
(define-key query-replace-map (kbd "a") 'automatic)
(define-key query-replace-map (kbd "n") 'skip)
(define-key query-replace-map (kbd "y") 'act)

(provide 'jd:replace-kb)

;; occur-mode-map
;; multi-query-replace-map
;; occur-edit-mode-map
;; occur-menu-map
