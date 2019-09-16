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

(provide 'jd:cc-mode-st.el)
