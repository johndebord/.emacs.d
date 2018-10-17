(provide 'jd:gud-mode-settings.el)

;; (defun jd:set-gdb-window-to-dedicated ()
;;   (interactive)
;;   (set-window-dedicated-p (get-buffer-window "gud-prog") t))
;; (add-hook 'gdb-breakpoints-mode-hook 'jd:set-gdb-window-to-dedicated)

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Hack to undo the hack on line 65 of `gud.el'
(global-set-key (kbd "C-x") nil)

;;;;;;;;;;;;;;;
;;; `gdb-mi.el'
(setq gud-gdb-command-name "gdb -q -i=mi")
(setq gdb-many-windows t)
(setq gdb-show-main t)
