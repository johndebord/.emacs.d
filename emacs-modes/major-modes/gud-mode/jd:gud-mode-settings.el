(provide 'jd:gud-mode-settings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function to open up gdb in a new frame
;;; Refine this function to define `<switch-frame>'
;;; And to open into fullscreen more elegantly
;;; Fully comprehend it later on
(defun jd:gdb-new-frame ()
  (interactive)
  (select-frame (make-frame))
  (toggle-frame-maximized)
  (call-interactively 'gdb))

;;;;;;;;;;;;;;;
;;; `gdb-mi.el'
(setq gud-gdb-command-name "gdb -q -i=mi")
(setq gdb-many-windows t)
(setq gdb-show-main t)

