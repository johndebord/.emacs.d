(provide 'jd:c++-mode-settings.el)

(defun jd:disable-abbrev-mode ()
  (abbrev-mode -1))
(add-hook 'c++-mode-hook 'jd:disable-abbrev-mode)

(defun jd:c++-mode-disable-indent-tabs-mode ()
  (setq indent-tabs-mode nil))
(add-hook 'c++-mode-hook 'jd:c++-mode-disable-indent-tabs-mode)

;;;;;;;;;;;;;;;;;;
;;; `cc-styles.el'
(c-set-offset 'inline-open '0)

;;;;;;;;;;;;;;;;
;;; `cc-vars.el'
(setq c-basic-offset 4)
(setq c-default-style "stroustrup")
