(defun jd:lisp-mode-enable-yasnippet-mode ()
  (yas-minor-mode t))
(add-hook 'lisp-mode-hook 'jd:lisp-mode-enable-yasnippet-mode)

(provide 'jd:lisp-mode-st.el)
