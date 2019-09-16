(defun jd:completion-list-mode-map ()
  (setf (cdr completion-list-mode-map) nil)
  (define-key completion-list-mode-map (kbd "<jd:ret>") 'choose-completion)
  (define-key completion-list-mode-map (kbd "<jd:tab>") 'next-completion)
  (define-key completion-list-mode-map (kbd "<jd:S-tab>") 'previous-completion)
  (define-key completion-list-mode-map (kbd "q") 'quit-window))
(add-hook 'completion-list-mode-hook 'jd:completion-list-mode-map)

(provide 'jd:simple-kb.el)
