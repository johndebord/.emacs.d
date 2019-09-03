(defun jd:c++-mode-enable-modern-c++-font-lock-mode ()
  (modern-c++-font-lock-mode t))
(add-hook 'c++-mode-hook 'jd:c++-mode-enable-modern-c++-font-lock-mode)

(defun jd:c++-mode-enable-yasnippet-mode ()
  (yas-minor-mode t))
(add-hook 'c++-mode-hook 'jd:c++-mode-enable-yasnippet-mode)

(defun jd:c++-mode-disable-abbrev-mode ()
  (abbrev-mode -1))
(add-hook 'c++-mode-hook 'jd:c++-mode-disable-abbrev-mode)

(defun jd:c++-mode-disable-indent-tabs-mode ()
  (setq indent-tabs-mode nil))
(add-hook 'c++-mode-hook 'jd:c++-mode-disable-indent-tabs-mode)

;;; `cc-styles.el'
(c-set-offset 'case-label '4)
(c-set-offset 'inlambda '0)
(c-set-offset 'inline-open '0)
(c-set-offset 'namespace-close '0)

;;; `cc-vars.el'
(setq c-basic-offset 3)
(setq c-default-style "stroustrup")

(provide 'jd:c++-mode-settings.el)
