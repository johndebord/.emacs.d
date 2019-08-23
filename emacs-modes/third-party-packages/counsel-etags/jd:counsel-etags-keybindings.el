(define-key global-map (kbd "<C-y>") 'counsel-etags-find-tag-at-point)
(define-key global-map (kbd "<C-x> y") 'counsel-etags-find-tag)
(define-key global-map (kbd "<C-x> <C-y>") 'counsel-etags-update-tags-force)

(provide 'jd:counsel-etags-keybindings.el)
