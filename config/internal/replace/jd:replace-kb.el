;; (defun jd:-map ()
;;   (setf (cdr -map) nil)
;;   (define-key -map (kbd ) '))
;; (add-hook '-mode-hook 'jd:-map)

;;; `query-replace-map' --- `replace.el'
(setf (cdr query-replace-map) nil)
(define-key query-replace-map (kbd "a") 'automatic)
(define-key query-replace-map (kbd "n") 'skip)
(define-key query-replace-map (kbd "y") 'act)


(provide 'jd:replace-kb.el)
