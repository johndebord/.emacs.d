(setq-default gdb-many-windows nil)
(setq-default gdb-show-main nil)
(setq-default gud-gdb-command-name "gdb --quiet --interpreter=mi")

(jd:provide-feature jd:gdb-mi-st)
