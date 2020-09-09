(setq-default eldoc-idle-delay 0)

(global-eldoc-mode 0)

(eldoc-add-command 'jd:delete-backward-char)
(eldoc-add-command 'delete-char)
(eldoc-add-command 'jd:self-insert-space)

(jd:provide-feature jd:eldoc-st)
