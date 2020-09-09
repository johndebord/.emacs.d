(setq-default display-buffer-base-action '((display-buffer-reuse-window display-buffer-same-window) . (inhibit-same-window . nil)))
(setq-default pop-up-frames nil)
(setq-default pop-up-windows nil)

(defun bury-buffer-internal (&rest _)
  "`bury-buffer-internal` is a built-in function defined in `src/buffer.c`; thus
to void out its behavior I define it like so.")

(defun set-window-dedicated-p (&rest _)
  "`set-window-dedicated-p` is a built-in function defined in `src/buffer.c`;
thus to void out its behavior I define it like so.")

(add-to-list 'display-buffer-alist
             '((lambda (&rest _)
                 (memq this-command
                       '(byte-force-recompile
                         compile-goto-error
                         man
                         jd:byte-compile-file
                         jd:edebug-eval-top-level-form
                         jd:eval
                         jd:eval-print-last-sexp
                         jd:incredibly-smart-return
                         jd:next-error
                         jd:previous-error)))
               (display-buffer-reuse-window display-buffer-same-window)
               (inhibit-same-window . nil)))

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

(jd:provide-feature jd:window-st)
