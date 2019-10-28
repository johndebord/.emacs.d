(setq-default gud-gdb-command-name "gdb --quiet --interpreter=mi")
(setq-default gdb-many-windows t)

;; GDBC
;; BRKP
;; LOCL
;; REGI
;; STCK
;; THRD
;; DASM
;; MEMO
;; INIO
;; PRIO

;; gud-comint-buffer
;; (setq-default gdb-comint-header nil)
;; (defvar jd:gdb-comint-header
;;   (list
;;    (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil nil                 mode-line)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)))
;; (define-derived-mode jd:gdb--mode gdb-breakpoints-mode ""
;;   (setq header-line-format jd:gdb--header))

;; gdb-breakpoints-buffer
;; (setq-default gdb-breakpoints-header nil)
;; (defvar jd:gdb-breakpoints-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "BRKP" gdb-breakpoints-buffer nil nil                 mode-line)          " "
;;    (gdb-propertize-header "LOCL" gdb-locals-buffer nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "REGI" gdb-registers-buffer nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "STCK" gdb-stack-buffer nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "THRD" gdb-threads-buffer     nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "DASM" gdb-disassembly-buffer nil mode-line-highlight mode-line-inactive) " "
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "INIO" 'gdb-inferior-io nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-breakpoints-mode gdb-breakpoints-mode "Breakpoints"
;;   (setq header-line-format jd:gdb-breakpoints-header))

;; (define-derived-mode gdb-breakpoints-mode gdb-parent-mode "Breakpoints"
;;   ;; (setq header-line-format gdb-breakpoints-header)
;;   (setq header-line-format jd:gdb-breakpoints-header)
;;   'gdb-invalidate-breakpoints)

;; ;; gdb-locals-buffer
;; ;; (setq-default gdb-locals-header nil)
;; (defvar jd:gdb-locals-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil nil                 mode-line)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-locals-mode gdb-locals-mode "Locals"
;;   (setq header-line-format jd:gdb-locals-header))


;; ;; gdb-registers-buffer
;; ;; (setq-default gdb-registers-header nil)
;; (defvar jd:gdb-registers-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil nil                 mode-line)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-registers-mode gdb-registers-mode "Registers"
;;   (setq header-line-format jd:gdb-registers-header))

;; ;; gdb-stack-buffer
;; ;; (setq-default gdb-stack-header nil)
;; (defvar jd:gdb-stack-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil nil                 mode-line)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-frames-mode gdb-frames-mode "Stack"
;;   (setq header-line-format jd:gdb-frames-header))

;; ;; gdb-threads-buffer
;; ;; (setq-default gdb-threads-header nil)
;; (defvar jd:gdb-threads-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil nil                 mode-line)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-threads-mode gdb-threads-mode "Threads"
;;   (setq header-line-format jd:gdb-threads-header))

;; ;; gdb-disassembly-buffer
;; ;; (setq-default gdb-disassembly-header nil)
;; (defvar jd:gdb-disassembly-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil nil                 mode-line)
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-disassembly-mode gdb-disassembly-mode "Disassembly"
;;   (setq header-line-format jd:gdb-disassembly-header))

;; gdb-memory-buffer
;; (setq-default gdb-memory-header nil)
;; (defvar jd:gdb-memory-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil nil                 mode-line)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-memory-mode gdb-memory-mode "Memory"
;;   (setq header-line-format jd:gdb-memory-header))

;; ;; gdb-inferior-io
;; ;; (setq-default gdb-inferior-io-header nil)
;; (defvar jd:gdb-inferior-io-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ;; (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil nil                 mode-line)
;;    ;; (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    ))
;; (define-derived-mode jd:gdb-inferior-io-mode gdb-inferior-io-mode "Inferior IO"
;;   (setq header-line-format jd:gdb-inferior-io-header))

;; gdb-partial-output-buffer
;; (setq-default gdb-partial-io-header nil)
;; (defvar jd:gdb-partial-io-header
;;   (list
;;    (gdb-propertize-header "GDB"         gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Locals"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Registers"   gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Stack"       gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer     nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Disassembly" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Memory"      gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Inferior IO" gdb-breakpoints-buffer nil mode-line-highlight mode-line-inactive)
;;    (gdb-propertize-header "Partial IO"  gdb-breakpoints-buffer nil nil                 mode-line)))
;; (define-derived-mode jd:gdb--mode gdb--mode "Partial IO"
;;   (setq header-line-format jd:gdb--header))

;; (defvar gdb-memory-header
;;   '(:eval
;;     (concat
;;      "Start address["
;;      (propertize "-"
;;                  'face font-lock-warning-face
;;                  'help-echo "mouse-1: decrement address"
;;                  'mouse-face 'mode-line-highlight
;;                  'local-map (gdb-make-header-line-mouse-map
;;                              'mouse-1
;;                              #'gdb-memory-show-previous-page))
;;      "|"
;;      (propertize "+"
;;                  'face font-lock-warning-face
;;                  'help-echo "mouse-1: increment address"
;;                  'mouse-face 'mode-line-highlight
;;                  'local-map (gdb-make-header-line-mouse-map
;;                              'mouse-1
;;                              #'gdb-memory-show-next-page))
;;      "]: "
;;      (propertize gdb-memory-address
;;                  'face font-lock-warning-face
;;                  'help-echo "mouse-1: set start address"
;;                  'mouse-face 'mode-line-highlight
;;                  'local-map (gdb-make-header-line-mouse-map
;;                              'mouse-1
;;                              #'gdb-memory-set-address-event))
;;      "  Rows: "
;;      (propertize (number-to-string gdb-memory-rows)
;;                  'face font-lock-warning-face
;;                  'help-echo "mouse-1: set number of columns"
;;                  'mouse-face 'mode-line-highlight
;;                  'local-map (gdb-make-header-line-mouse-map
;;                              'mouse-1
;;                              #'gdb-memory-set-rows))
;;      "  Columns: "
;;      (propertize (number-to-string gdb-memory-columns)
;;                  'face font-lock-warning-face
;;                  'help-echo "mouse-1: set number of columns"
;;                  'mouse-face 'mode-line-highlight
;;                  'local-map (gdb-make-header-line-mouse-map
;;                              'mouse-1
;;                              #'gdb-memory-set-columns))
;;      "  Display Format: "
;;      (propertize gdb-memory-format
;;                  'face font-lock-warning-face
;;                  'help-echo "mouse-3: select display format"
;;                  'mouse-face 'mode-line-highlight
;;                  'local-map gdb-memory-format-map)
;;      "  Unit Size: "
;;      (propertize (number-to-string gdb-memory-unit)
;;                  'face font-lock-warning-face
;;                  'help-echo "mouse-3: select unit size"
;;                  'mouse-face 'mode-line-highlight
;;                  'local-map gdb-memory-unit-map)))
;;   "Header line used in `gdb-memory-mode'.")

;; (defun jd:gdb-setup-windows ()
;;   (gdb-get-buffer-create 'gdb-breakpoints-buffer)
;;   (gdb-get-buffer-create 'gdb-locals-buffer)
;;   (gdb-get-buffer-create 'gdb-registers-buffer)
;;   (gdb-get-buffer-create 'gdb-stack-buffer)
;;   (gdb-get-buffer-create 'gdb-threads-buffer)
;;   (gdb-get-buffer-create 'gdb-disassembly-buffer)
;;   (gdb-get-buffer-create 'gdb-memory-buffer)
;;   (gdb-get-buffer-create 'gdb-inferior-io)
;;   (gdb-get-buffer-create 'gdb-partial-output-buffer)
;;   (delete-other-windows)
;;   (let ((win0 (selected-window))
;;         (win1 (split-window)))
;;     (set-window-buffer win0 gud-comint-buffer)
;;     (set-window-buffer win1 (gud-find-file gdb-main-file))
;;     (select-window win1)
;;     (setq gdb-source-window (selected-window))
;;     (select-window win0)))

;; (advice-add 'gdb-setup-windows :override 'jd:gdb-setup-windows)

(provide 'jd:gdb-mi-st.el)
