(defun jd:python-mode-hook ()
  (progn
    (company-mode 1)
    (idle-highlight-mode 1)
    (yas-minor-mode 1)
    (lsp)
    (set (make-local-variable 'company-backends)
         '((company-lsp :separate company-dabbrev-code :separate company-yasnippet)))))

(add-hook 'python-mode-hook 'jd:python-mode-hook)

(jd:provide-feature jd:python-st)
