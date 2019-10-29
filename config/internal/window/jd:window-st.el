(setq-default pop-up-frames nil)
(setq-default pop-up-windows nil)

(advice-add 'bury-buffer :override (lambda (&optional buffer-or-name)))
(advice-add 'bury-buffer-internal :override (lambda (&optional buffer-or-name)))
(advice-add 'help-window-display-message :override (lambda (quit-part window &optional scroll)))

(add-to-list 'display-buffer-alist
             '((lambda (&rest _)
                 (memq this-command
                       '(byte-force-recompile
                         compile-goto-error
                         jd:byte-compile-file
                         jd:next-error
                         jd:previous-error)))
               (display-buffer-reuse-window
                display-buffer-same-window)
               (inhibit-same-window . nil)))

;; (add-to-list 'display-buffer-alist
;;              '((lambda (&rest _)
;;                  (memq this-command
;;                        '(byte-force-recompile
;;                          compile-goto-error
;;                          jd:byte-compile-file
;;                          jd:next-error
;;                          jd:previous-error)))
;;                (display-buffer-same-window)
;;                (inhibit-same-window . nil)))

;; delete-other-windows
;; split-window

;; (push '("\\`\\*shell" display-buffer-same-window (inhibit-same-window)) display-buffer-alist)

;; (setq display-buffer-alist nil)

;; (add-to-list 'display-buffer-alist
;;              '((lambda (&rest _)
;;                  (memq this-command
;;                        '(gdb-get-source-file)))
;;                (let ((window (split-window)))
;;                  (setq gdb-main-file "/home/i/main.cpp")
;;                  (display-buffer-reuse-window
;;                   display-buffer-same-window)
;;                  (inhibit-same-window . nil))))

(add-to-list 'same-window-buffer-names "*Apropos*")
(add-to-list 'same-window-buffer-names "*Completions*")
(add-to-list 'same-window-buffer-names "*Faces*")
(add-to-list 'same-window-buffer-names "*Help*")
(add-to-list 'same-window-buffer-names "*Output*")
(add-to-list 'same-window-buffer-names "*Keymap*")
(add-to-list 'same-window-buffer-names "*xref*")
(add-to-list 'same-window-regexps ".+c")
(add-to-list 'same-window-regexps ".+cpp")
(add-to-list 'same-window-regexps ".+el")
(add-to-list 'same-window-regexps ".+el.gz")
(add-to-list 'same-window-regexps ".+h")
(add-to-list 'same-window-regexps ".+hpp")
(add-to-list 'same-window-regexps ".+ipp")

(provide 'jd:window-st.el)
