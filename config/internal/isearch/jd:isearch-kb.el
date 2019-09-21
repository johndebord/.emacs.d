;; (defun jd:-map ()
;;   (setf (cdr -map) nil)
;;   (define-key -map (kbd ) '))
;; (add-hook '-mode-hook 'jd:-map)

;;; `minibuffer-local-isearch-map' --- `isearch.el'
(setf (cdr minibuffer-local-isearch-map) nil)

(provide 'jd:isearch-kb.el)
