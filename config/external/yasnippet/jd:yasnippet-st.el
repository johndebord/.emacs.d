(yas-load-directory (concat jd:external-prefix "yasnippet/snippets/"))

(add-hook 'c++-mode-hook
          (lambda ()
            (yas-minor-mode t)))

(provide 'jd:yasnippet-st.el)
