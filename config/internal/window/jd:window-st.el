(setq-default pop-up-frames nil)

(add-to-list 'same-window-buffer-names "*Apropos*")
(add-to-list 'same-window-buffer-names "*Faces*")
(add-to-list 'same-window-buffer-names "*Help*")
(add-to-list 'same-window-buffer-names "*Output*")
(add-to-list 'same-window-buffer-names "*Keymap*")
(add-to-list 'same-window-regexps ".+c")
(add-to-list 'same-window-regexps ".+cpp")
(add-to-list 'same-window-regexps ".+el")
(add-to-list 'same-window-regexps ".+el.gz")
(add-to-list 'same-window-regexps ".+h")
(add-to-list 'same-window-regexps ".+hpp")
(add-to-list 'same-window-regexps ".+ipp")

(provide 'jd:window-st.el)
