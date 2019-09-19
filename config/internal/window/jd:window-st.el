(setq-default pop-up-frames nil)
(add-to-list 'same-window-buffer-names "*Apropos*")
(add-to-list 'same-window-buffer-names "*Faces*")
(add-to-list 'same-window-buffer-names "*Help*")
(add-to-list 'same-window-buffer-names "*Keymap*")
(add-to-list 'same-window-regexps ".+el.gz")

(provide 'jd:window-st.el)
