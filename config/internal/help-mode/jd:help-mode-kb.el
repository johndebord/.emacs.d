(defun jd:help-mode-scroll-down ()
  (interactive)
  (beginning-of-line)
  (forward-line)
  (recenter))

(defun jd:help-mode-scroll-up ()
  (interactive)
  (beginning-of-line)
  (forward-line -1)
  (recenter))

(defun jd:help-mode-map ()
  (setf (cdr help-mode-map) nil)
  (define-key help-mode-map (kbd "<jd:ret>") 'push-button)
  (define-key help-mode-map (kbd "<mouse-1>") 'push-button)
  (define-key help-mode-map (kbd "i") 'jd:help-mode-scroll-up)
  (define-key help-mode-map (kbd "k") 'jd:help-mode-scroll-down)
  (define-key help-mode-map (kbd "j") 'help-go-back)
  (define-key help-mode-map (kbd "l") 'help-go-forward)
  (define-key help-mode-map (kbd "q") 'quit-window))
(add-hook 'help-mode-hook 'jd:help-mode-map)

;;; `help-map' --- `help.el'
(defun jd:help-map ()
  (setf (cdr help-map) nil))
(add-hook 'help-mode-hook 'jd:help-map)

;;; `help-mode-menu' --- `help.el'
(defun jd:help-mode-menu ()
  (setf (cdr help-mode-menu) nil))
(add-hook 'help-mode-hook 'jd:help-mode-menu)

(provide 'jd:help-mode-kb.el)
