(provide 'jd:cua-rectangle-mark-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;
;;; cua--rectangle-keymap
(defun jd:cua--rectangle-keymap ()
  (setf (cdr cua--rectangle-keymap) nil))
(add-hook 'cua-rectangle-mark-mode-hook 'jd:cua--rectangle-keymap)
