(defun jd:rcirc-mode-map ()
  (setf (cdr rcirc-mode-map) nil)
  (define-key rcirc-mode-map (kbd "<jd:ret>") 'rcirc-send-input)
  (define-key rcirc-mode-map (kbd "<jd:tab>") 'rcirc-complete)
  (define-key rcirc-mode-map (kbd "<C-M-i>") 'rcirc-insert-prev-input)
  (define-key rcirc-mode-map (kbd "<C-M-k>") 'rcirc-insert-next-input))
(add-hook 'rcirc-mode-hook 'jd:rcirc-mode-map)

(defun jd:rcirc-multiline-minor-mode-map ()
  (setf (cdr rcirc-multiline-minor-mode-map) nil))
(add-hook 'rcirc-mode-hook 'jd:rcirc-multiline-minor-mode-map)

(defun jd:rcirc-track-minor-mode-map ()
  (setf (cdr rcirc-track-minor-mode-map) nil))
(add-hook 'rcirc-mode-hook 'jd:rcirc-track-minor-mode-map)

(provide 'jd:rcirc-kb.el)
