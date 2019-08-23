;;; Hack to undo the hack on line 65 of `gud.el'
(global-set-key (kbd "C-x") nil)

;;; `gdb-mi.el'
(setq gud-gdb-command-name "gdb -q -i=mi")
(setq gdb-many-windows t)
(setq gdb-show-main t)

(provide 'jd:gud-mode-settings.el)
