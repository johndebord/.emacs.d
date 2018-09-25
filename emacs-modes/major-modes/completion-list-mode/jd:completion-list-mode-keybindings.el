(provide 'jd:completion-list-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `completion-list-mode-map' --- `simple.el'
(defun jd:completion-list-mode-map ()
  (setf (cdr completion-list-mode-map) nil)
  (defin-key completion-list-mode-map (kbd "<jd:ret>") 'choose-completion)
  (defin-key completion-list-mode-map (kbd "<jd:tab>") 'next-completion)
  (defin-key completion-list-mode-map (kbd "<jd:S-tab>") 'previous-completion)
  (defin-key completion-list-mode-map (kbd "q") 'quit-window))
(add-hook 'completion-list-mode-hook 'jd:completion-list-mode-map)

