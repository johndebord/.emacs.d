(setq-default tramp-ssh-controlmaster-options "")

(add-to-list 'tramp-remote-path 'tramp-own-remote-path)

(jd:provide-feature jd:tramp-sh-st)
