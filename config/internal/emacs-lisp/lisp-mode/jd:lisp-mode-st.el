(defun jd:lisp-mode-hook ()
  (company-mode 1)
  (eldoc-mode 1)
  (electric-pair-mode 1)
  (idle-highlight-mode 1)
  (yas-minor-mode 1)
  (set (make-local-variable 'company-backends)
       '((company-capf :separate company-dabbrev-code :separate company-yasnippet)))
  (set (make-local-variable 'electric-pair-text-pairs)
       '((#x60 . #x60)))) ; '`' '`'

(add-hook 'lisp-mode-hook 'jd:lisp-mode-hook)

(jd:provide-feature jd:lisp-mode-st)
