(setq-default eldoc-idle-delay 0)

(global-eldoc-mode -1)
(eldoc-add-command 'jd:delete-backward-char)
(eldoc-add-command 'delete-char)
(eldoc-add-command 'jd:self-insert-space)

(provide 'jd:eldoc-st)
