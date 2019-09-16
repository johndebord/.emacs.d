(setq-default speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
(setq-default speedbar-use-tool-tips-flag nil)

(defun jd:speedbar-settings ()
  (setq mode-line-format nil))
(add-hook 'speedbar-mode-hook 'jd:speedbar-settings)

;;; Redefinition
(defun speedbar-set-mode-line-format ()
  (setq mode-line-format nil))

(provide 'jd:sr-speedbar-st.el)
