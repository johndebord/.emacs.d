(setq-default gdb-display-io-nopopup t)
(setq-default gud-gdb-command-name "gdb --quiet --interpreter=mi")
(setq-default gdb-many-windows t)
(setq-default gdb-show-main nil)

(defmacro jd:gdb-propertize-header (name display-function mouse-face face)
  `(propertize ,name
               'help-echo nil
	       'mouse-face ',mouse-face
	       'face ',face
	       'local-map
	       (gdb-make-header-line-mouse-map
	        'mouse-1
                (lambda (event)
                  (interactive "e")
                  (save-selected-window
                    (select-window (posn-window (event-start event)))
                    (switch-to-buffer
                     (window-buffer
                      (funcall ',display-function)) nil 'force-same-window))))))

(defconst jd:gdb-comint-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         nil                 mode-line)          " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-breakpoints-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer          mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer  nil                 mode-line)          " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer    mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer        mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer  mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer           mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-locals-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      nil                 mode-line)          " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-registers-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   nil                 mode-line)          " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-stack-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       nil                 mode-line)          " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-threads-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     nil                 mode-line)          " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-disassembly-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer nil                 mode-line)          " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-memory-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      nil                 mode-line)          " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-inferior-io-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Memory"      gdb-display-memory-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          nil                 mode-line)))

;; Redefinition.
(define-derived-mode gud-mode comint-mode "Debugger"
  (setq header-line-format jd:gdb-comint-header)
  (setq mode-line-process '(":%s"))
  (define-key (current-local-map) "\C-c\C-l" 'gud-refresh)
  (set (make-local-variable 'gud-last-frame) nil)
  (if (boundp 'tool-bar-map)
      (setq-local tool-bar-map gud-tool-bar-map))
  (make-local-variable 'comint-prompt-regexp)
  (set (make-local-variable 'comint-input-ignoredups) t)
  (make-local-variable 'paragraph-start)
  (set (make-local-variable 'gud-delete-prompt-marker) (make-marker))
  (add-hook 'kill-buffer-hook 'gud-kill-buffer-hook nil t))

;; Redefinition.
(define-derived-mode gdb-breakpoints-mode gdb-parent-mode "Breakpoints"
  (setq header-line-format jd:gdb-breakpoints-header)
  'gdb-invalidate-breakpoints)

;; Redefinition.
(define-derived-mode gdb-locals-mode gdb-parent-mode "Locals"
  (setq header-line-format jd:gdb-locals-header)
  'gdb-invalidate-locals)

;; Redefinition.
(define-derived-mode gdb-registers-mode gdb-parent-mode "Registers"
  (setq header-line-format jd:gdb-registers-header)
  'gdb-invalidate-registers)

;; Redefinition.
(define-derived-mode gdb-frames-mode gdb-parent-mode "Frames"
  (setq header-line-format jd:gdb-stack-header)
  (setq gdb-stack-position (make-marker))
  (add-to-list 'overlay-arrow-variable-list 'gdb-stack-position)
  (setq truncate-lines t)
  (set (make-local-variable 'font-lock-defaults)
       '(gdb-frames-font-lock-keywords))
  'gdb-invalidate-frames)

;; Redefinition.
(define-derived-mode gdb-threads-mode gdb-parent-mode "Threads"
  (setq header-line-format jd:gdb-threads-header)
  (setq gdb-thread-position (make-marker))
  (add-to-list 'overlay-arrow-variable-list 'gdb-thread-position)
  (set (make-local-variable 'font-lock-defaults)
       '(gdb-threads-font-lock-keywords))
  'gdb-invalidate-threads)

;; Redefinition.
(define-derived-mode gdb-disassembly-mode gdb-parent-mode "Disassembly"
  (setq header-line-format jd:gdb-disassembly-header)
  (add-to-list 'overlay-arrow-variable-list 'gdb-disassembly-position)
  (setq fringes-outside-margins t)
  (set (make-local-variable 'gdb-disassembly-position) (make-marker))
  (set (make-local-variable 'font-lock-defaults)
       '(gdb-disassembly-font-lock-keywords))
  'gdb-invalidate-disassembly)

;; Redefinition.
(define-derived-mode gdb-memory-mode gdb-parent-mode "Memory"
  (setq header-line-format jd:gdb-memory-header)
  (set (make-local-variable 'font-lock-defaults)
       '(gdb-memory-font-lock-keywords))
  'gdb-invalidate-memory)

;; Redefinition.
(define-derived-mode gdb-inferior-io-mode comint-mode "Inferior I/O"
  :syntax-table nil :abbrev-table nil
  (make-comint-in-buffer "gdb-inferior" (current-buffer) nil)
  (setq header-line-format jd:gdb-inferior-io-header))

(defun jd:gdb-startup ()
  (sleep-for 1)
  (delete-other-windows)
  (let ((win0 (selected-window)))
    (set-window-buffer win0 gud-comint-buffer)
    (if (gud-find-file gdb-main-file)
        (progn
          (let ((win1 (split-window)))
            (set-window-buffer win1 (gud-find-file gdb-main-file))
            (select-window win1)
            (setq gdb-source-window (selected-window)))))
    (select-window win0)))

(defun jd:gdb-shutdown ()
  (sleep-for 1)
  (delete-other-windows)
  (eshell))

(defun jd:gdb-display-buffer (buf)
  (let ((window (display-buffer buf '(display-buffer-same-window (inhibit-duplicate-buffer . t)))))
    window))

(defun jd:gdb-display-gdb-buffer ()
  (interactive)
  (let ((window (display-buffer gud-comint-buffer '(display-buffer-same-window (inhibit-duplicate-buffer . t)))))
    window))

(add-hook 'gdb-mode-hook 'jd:gdb-startup)

(advice-add 'gdb-display-buffer :override 'jd:gdb-display-buffer)
(advice-add 'gdb-display-gdb-buffer :override 'jd:gdb-display-gdb-buffer)
(advice-add 'gud-kill-buffer-hook :after 'jd:gdb-shutdown)

;; ;; Redefinition.
;; (def-gdb-trigger-and-handler
;;   gdb-invalidate-locals
;;   (concat (gdb-current-context-command "-stack-list-variables")
;;           " --simple-values")
;;   gdb-locals-handler gdb-locals-handler-custom
;;   '(start update))

;; (def-gdb-trigger-and-handler
;;   gdb-locals-values
;;   (concat (gdb-current-context-command "-stack-list-variables")
;;           " --all-values")
;;   gdb-locals-values-handler gdb-locals-values-handler-custom
;;   '(start update))

;; (gdb-set-buffer-rules
;;  'gdb-locals-values-buffer
;;  'gdb-locals-values-buffer-name
;;  'gdb-locals-mode
;;  'gdb-locals-values)

;; (defun gdb-locals-values-buffer-name ()
;;   (gdb-current-context-buffer-name
;;    (concat "local values of " (gdb-get-target-string))))

;; (defcustom gdb-locals-simple-values-only nil
;;   "Only display simple values in the Locals buffer."
;;   :type 'boolean
;;   :group 'gud)

;; (defcustom gdb-locals-value-limit 100
;;   "Maximum length the value of a local variable is allowed to be."
;;   :type 'integer
;;   :group 'gud)

;; (defvar gdb-locals-values-table (make-hash-table :test #'equal)
;;   "Mapping of local variable names to a string with their value.")

;; (defun gdb-locals-values-handler-custom ()
;;   "Store the values of local variables in `gdb-locals-value-map'."
;;   (let ((locals-list (bindat-get-field (gdb-json-partial-output) 'variables)))
;;     (dolist (local locals-list)
;;       (let ((name (bindat-get-field local 'name))
;;             (value (bindat-get-field local 'value)))
;;         (puthash name value gdb-locals-values-table)))))
 
;; (defun gdb-locals-value-filter (value)
;;   "Filter function for the local variable VALUE."
;;   (let* ((no-nl (replace-regexp-in-string "\n" " " value))
;;          (str (replace-regexp-in-string "[[:space:]]+" " " no-nl))
;;          (limit gdb-locals-value-limit))
;;     (if (>= (length str) limit)
;;         (concat (substring str 0 limit) "...")
;;       str)))

;; ;; Redefinition.
;; ;; Complex data types are looked up in `gdb-locals-values-table'.
;; (defun gdb-locals-handler-custom ()
;;   "Handler to rebuild the local variables table buffer."
;;   (let ((locals-list (bindat-get-field (gdb-json-partial-output) 'locals))
;;         (table (make-gdb-table)))
;;     (dolist (local locals-list)
;;       (let ((name (bindat-get-field local 'name))
;;             (value (bindat-get-field local 'value))
;;             (type (bindat-get-field local 'type)))
;;         (when (not value)
;;           (setq value
;;                 (if gdb-locals-simple-values-only
;;                     "<complex data type>"
;;                   (gethash name gdb-locals-values-table "<unavailable>"))))
;;         (setq value (gdb-locals-value-filter value))
;;         (if (or (not value)
;;                 (string-match "0x" value))
;;             (add-text-properties 0 (length name)
;;                                  `(mouse-face highlight
;;                                               help-echo "mouse-2: create watch expression"
;;                                               local-map ,gdb-locals-watch-map)
;;                                  name)
;;           (add-text-properties 0 (length value)
;;                                `(mouse-face highlight
;;                                             help-echo "mouse-2: edit value"
;;                                             local-map ,gdb-edit-locals-map-1)
;;                                value))
;;         (gdb-table-add-row
;;          table
;;          (list
;;           (propertize type 'font-lock-face font-lock-type-face)
;;           (propertize name 'font-lock-face font-lock-variable-name-face)
;;           value)
;;          `(gdb-local-variable ,local))))
;;     (insert (gdb-table-string table " "))
;;     (setq mode-name
;;           (gdb-current-context-mode-name
;;            (concat "Locals: "
;;                    (bindat-get-field (gdb-current-buffer-frame) 'func))))))

;; ;; Redefinition.
;; (defun gdb-setup-windows ()
;;   "Layout the window pattern for option `gdb-many-windows'."
;;   ;; Make sure that local values are updated before locals.
;;   (gdb-get-buffer-create 'gdb-locals-values-buffer)
;;   (gdb-get-buffer-create 'gdb-locals-buffer)
;;   (gdb-get-buffer-create 'gdb-stack-buffer)
;;   (gdb-get-buffer-create 'gdb-breakpoints-buffer)
;;   (set-window-dedicated-p (selected-window) nil)
;;   (switch-to-buffer gud-comint-buffer)
;;   (delete-other-windows)
;;   (let ((win0 (selected-window))
;;         (win1 (split-window nil ( / ( * (window-height) 3) 4)))
;;         (win2 (split-window nil ( / (window-height) 3)))
;;         (win3 (split-window-right)))
;;     (gdb-set-window-buffer (gdb-locals-buffer-name) nil win3)
;;     (select-window win2)
;;     (set-window-buffer
;;      win2
;;      (if gud-last-last-frame
;;          (gud-find-file (car gud-last-last-frame))
;;        (if gdb-main-file
;;            (gud-find-file gdb-main-file)
;;          ;; Put buffer list in window if we
;;          ;; can't find a source file.
;;          (list-buffers-noselect))))
;;     (setq gdb-source-window (selected-window))
;;     (let ((win4 (split-window-right)))
;;       (gdb-set-window-buffer
;;        (gdb-get-buffer-create 'gdb-inferior-io) nil win4))
;;     (select-window win1)
;;     (gdb-set-window-buffer (gdb-stack-buffer-name))
;;     (let ((win5 (split-window-right)))
;;       (gdb-set-window-buffer (if gdb-show-threads-by-default
;;                                  (gdb-threads-buffer-name)
;;                                (gdb-breakpoints-buffer-name))
;;                              nil win5))
;;     (select-window win0)))

(provide 'jd:gdb-mi-st.el)
