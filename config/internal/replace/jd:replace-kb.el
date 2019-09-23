(setf (cdr multi-query-replace-map) nil)
(setf (cdr occur-edit-mode-map) nil)
(setf (cdr occur-menu-map) nil)
(setf (cdr occur-mode-map) nil)

(setf (cdr query-replace-map) nil)
(define-key query-replace-map (kbd "a") 'automatic)
(define-key query-replace-map (kbd "n") 'skip)
(define-key query-replace-map (kbd "y") 'act)


(provide 'jd:replace-kb.el)
