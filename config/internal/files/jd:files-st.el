(setq-default auto-save-file-name-transforms `(("*" ,(concat jd:path-prefix "file-backups/") t)))
(setq-default backup-by-copying t)
(setq-default backup-directory-alist `(("*" . ,(concat jd:path-prefix "file-backups/"))))
(setq-default large-file-warning-threshold nil)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode))
(add-to-list 'auto-mode-alist '("[Mm]akefile\\'" . makefile-mode))

(provide 'jd:files-st.el)
