(setq-default counsel-grep-base-command "rg -i -M 120 --no-heading --line-number --color never '%s' %s")
(setq-default counsel-rg-base-command "rg -i -M 120 --no-heading --line-number --color never %s .")

(provide 'jd:counsel-st.el)
