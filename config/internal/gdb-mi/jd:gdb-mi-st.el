(setq-default gud-gdb-command-name "gdb --quiet --interpreter=mi")
(setq-default gdb-many-windows nil)
(setq-default gdb-show-main t)

(advice-add 'gdb :after
            (lambda (&rest _)
              (delete-other-windows)
              (let ((win0 (get-buffer-window))
                    (win1 (split-window-below)))
                (if (gbd-main-file)
                    (progn
                      (select-window win1)
                      (display-buffer gdb-main-file)
                      (select-window win0)
                      (display-buffer (get-gud-buffer)))
                  (progn
                    (delete-window win1)
                    (select-window win0)
                    (display-buffer (get-gud-buffer))
                    (split-window))))))

(provide 'jd:gdb-mi-st.el)
