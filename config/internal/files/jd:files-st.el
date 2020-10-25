(setq-default auto-save-file-name-transforms `((".*" ,(concat jd:path-prefix "/autosaves") t)))
(setq-default backup-by-copying t)
(setq-default backup-directory-alist `((".*" . ,(concat jd:path-prefix "/backups"))))
(setq-default delete-auto-save-files nil)
(setq-default remote-shell-program (purecopy "ssh"))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.gp\\'" . gnuplot-mode))
(add-to-list 'auto-mode-alist '("[Mm]akefile\\'" . makefile-mode))

(jd:provide-feature jd:files-st)
