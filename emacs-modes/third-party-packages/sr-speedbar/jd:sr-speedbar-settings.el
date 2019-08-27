;;; `speedbar.el'
(defun jd:speedbar-settings ()
  (setq mode-line-format nil)
  (setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
  (setq speedbar-use-tool-tips-flag nil))
(add-hook 'speedbar-mode-hook 'jd:speedbar-settings)

;;; Redefinition
(defun speedbar-set-mode-line-format ()
  (setq mode-line-format nil))

(provide 'jd:sr-speedbar-settings.el)
