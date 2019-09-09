;;; `edebug-eval-mode-map' --- `edebug.el'
(defun jd:edebug-eval-mode-map ()
 (setf (cdr edebug-eval-mode-map) nil))
(add-hook 'edebug-mode-hook 'jd:edebug-eval-mode-map)

;;; `edebug-menu' --- `edebug.el'
(defun jd:edebug-menu ()
 (setf (cdr edebug-menu) nil))
(add-hook 'edebug-mode-hook 'jd:edebug-menu)

;;; `edebug-mode-map' --- `edebug.el'
(defun jd:edebug-mode-map ()
  (setf (cdr edebug-mode-map) nil)
  (define-key edebug-mode-map (kbd "B") 'edebug-backtrace)
  (define-key edebug-mode-map (kbd "C") 'edebug-Continue-fast-mode)
  (define-key edebug-mode-map (kbd "S") 'edebug-stop)
  (define-key edebug-mode-map (kbd "T") 'edebug-Trace-fast-mode)
  (define-key edebug-mode-map (kbd "X") 'edebug-set-global-break-condition)
  (define-key edebug-mode-map (kbd "b") 'edebug-set-breakpoint)
  (define-key edebug-mode-map (kbd "c") 'edebug-continue-mode)
  (define-key edebug-mode-map (kbd "i") 'edebug-step-in)
  (define-key edebug-mode-map (kbd "n") 'edebug-next-breakpoint)
  (define-key edebug-mode-map (kbd "o") 'edebug-step-out)
  (define-key edebug-mode-map (kbd "q") 'top-level)
  (define-key edebug-mode-map (kbd "s") 'edebug-step-mode)
  (define-key edebug-mode-map (kbd "t") 'edebug-trace-mode)
  (define-key edebug-mode-map (kbd "u") 'edebug-unset-breakpoint)
  (define-key edebug-mode-map (kbd "x") 'edebug-set-conditional-breakpoint))
(add-hook 'edebug-mode-hook 'jd:edebug-mode-map)

(provide 'jd:edebug-keybindings.el)
