(provide 'jd:grep-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `grep-mode-map' --- `grep.el'
(defun jd:grep-mode-map ()
  (setf (cdr grep-mode-map) nil)
  (define-key grep-mode-map (kbd "<jd:ret>") 'compile-goto-error)
  (define-key grep-mode-map (kbd "<jd:spc>") 'compilation-display-error)
  (define-key grep-mode-map (kbd "<jd:tab>") 'compilation-next-error)
  (define-key grep-mode-map (kbd "<jd:S-tab>") 'compilation-previous-error)
  (define-key grep-mode-map (kbd "<C-c> <jd:tab>") 'compilation-next-file)
  (define-key grep-mode-map (kbd "<C-c> <jd:S-tab>") 'compilation-previous-file)
  (define-key grep-mode-map (kbd "<C-c> <C-c>") 'kill-compilation))
(add-hook 'grep-mode-hook 'jd:grep-mode-map)
