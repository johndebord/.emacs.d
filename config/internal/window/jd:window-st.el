;; Customization variables.
(defvar display-buffer-alist)
(defvar display-buffer-function)
(defvar display-buffer-reuse-frames)
(defvar even-window-sizes)
(defvar fit-frame-to-buffer)
(defvar fit-frame-to-buffer-margins)
(defvar fit-frame-to-buffer-sizes)
(defvar fit-window-to-buffer-horizontally)
(defvar frame-auto-hide-function)
(defvar pop-up-frame-alist)
(defvar pop-up-frame-function)
(defvar recenter-positions)
(defvar same-window-buffer-names)
(defvar same-window-regexps)
(defvar scroll-error-top-bottom)
(defvar special-display-buffer-names)
(defvar special-display-frame-alist)
(defvar special-display-function)
(defvar special-display-regexps)
(defvar split-height-threshold)
(defvar split-width-threshold)
(defvar split-window-keep-point)
(defvar split-window-preferred-function)
(defvar switch-to-buffer-in-dedicated-window)
(defvar switch-to-buffer-preserve-window-point)
(defvar switch-to-visible-buffer)
(defvar window-adjust-process-window-size-function)
(defvar window-min-height)
(defvar window-min-width)
(defvar window-sides-reversed)
(defvar window-sides-slots)
(defvar window-sides-vertical)

(setq-default display-buffer-base-action
              '((display-buffer-reuse-window display-buffer-same-window) . (inhibit-same-window . nil)))
(setq-default pop-up-frames nil)
(setq-default pop-up-windows nil)

;; `bury-buffer-internal` is a built-in function defined in `src/buffer.c`; thus
;; to void out its behavior I define it like so.
(defun bury-buffer-internal (&rest _))

;; `set-window-dedicated-p` is a built-in function defined in `src/buffer.c`;
;; thus to void out its behavior I define it like so.
(defun set-window-dedicated-p (&rest _))

(add-to-list 'display-buffer-alist
             '((lambda (&rest _)
                 (memq this-command
                       '(byte-force-recompile
                         compile-goto-error
                         jd:byte-compile-file
                         
                         jd:edebug-eval-top-level-form
                         jd:eval
                         jd:eval-print-last-sexp

                         jd:incredibly-smart-return
                         
                         jd:next-error
                         jd:previous-error)))
               (display-buffer-reuse-window
                display-buffer-same-window)
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

(provide 'jd:window-st)
