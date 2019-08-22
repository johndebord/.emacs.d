(provide 'jd:debugger-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `debugger-mode-map' --- `debug.el'
(defun jd:debugger-mode-map ()
  (setf (cdr debugger-mode-map) nil)
  (define-key debugger-mode-map (kbd "<jd:ret>") 'push-button)
  (define-key debugger-mode-map (kbd "<jd:tab>") 'forward-button)
  ;; (define-key debugger-mode-map (kbd "<jd:S-tab>") 'backward-button)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; Another weird Mac bind; fix later
  (define-key debugger-mode-map (kbd "<tab>") 'forward-button)
  (define-key debugger-mode-map (kbd "<right>") 'debugger-step-through)
  (define-key debugger-mode-map (kbd "q") 'top-level))
(add-hook 'debugger-mode-hook 'jd:debugger-mode-map)
