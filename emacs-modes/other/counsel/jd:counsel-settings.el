(provide 'jd:counsel-settings.el)

(setq counsel-grep-base-command
      "rg -i -M 120 --no-heading --line-number --color never '%s' %s"
      counsel-rg-base-command
      "rg -i -M 120 --no-heading --line-number --color never %s .")
(setq ivy-extra-directories nil)
