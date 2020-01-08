;; Faces.
(defvar breakpoint-disabled)
(defvar breakpoint-enabled)

;; Customization variables.
(defvar gdb-cpp-define-alist-flags)
(defvar gdb-cpp-define-alist-program)
(defvar gdb-create-source-file-list)
(defvar gdb-debug-log-max)
(defvar gdb-delete-out-of-scope)
(defvar gdb-discard-unordered-replies)
(defvar gdb-display-buffer-other-frame-action)
(defvar gdb-display-io-nopopup)
(defvar gdb-gud-control-all-threads)
(defvar gdb-max-children)
(defvar gdb-memory-columns)
(defvar gdb-memory-format)
(defvar gdb-memory-rows)
(defvar gdb-memory-unit)
(defvar gdb-mi-decode-strings)
(defvar gdb-non-stop-setting)
(defvar gdb-show-changed-values)
(defvar gdb-show-threads-by-default)
(defvar gdb-stack-buffer-addresses)
(defvar gdb-stack-buffer-locations)
(defvar gdb-stopped-functions)
(defvar gdb-switch-reasons)
(defvar gdb-switch-when-another-stopped)
(defvar gdb-thread-buffer-addresses)
(defvar gdb-thread-buffer-arguments)
(defvar gdb-thread-buffer-locations)
(defvar gdb-thread-buffer-verbose-names)
(defvar gdb-use-colon-colon-notation)

(setq-default gdb-many-windows nil)
(setq-default gdb-show-main nil)
(setq-default gud-gdb-command-name "gdb --quiet --interpreter=mi")

(defmacro jd:gdb-propertize-header (name display-function mouse-face face)
  `(propertize
    ,name
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
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-breakpoints-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer nil                 mode-line)          " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-locals-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      nil                 mode-line)          " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-registers-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   nil                 mode-line)          " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-disassembly-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer nil                 mode-line)          " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-stack-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       nil                 mode-line)          " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-threads-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     nil                 mode-line)          " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-inferior-io-header
  (list
   (jd:gdb-propertize-header "GDB"         gdb-display-gdb-buffer         mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Breakpoints" gdb-display-breakpoints-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Locals"      gdb-display-locals-buffer      mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Registers"   gdb-display-registers-buffer   mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Disassembly" gdb-display-disassembly-buffer mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Stack"       gdb-display-stack-buffer       mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Threads"     gdb-display-threads-buffer     mode-line-highlight mode-line-inactive) " "
   (jd:gdb-propertize-header "Inferior IO" gdb-display-io-buffer          nil                 mode-line)))

(defun jd:gdb-mode-hook ()
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

(defun jd:gdb-breakpoints-mode-hook ()
  (font-lock-mode 1))

(defun jd:gdb-locals-mode-hook ()
  (font-lock-mode 1))

(defun jd:gdb-registers-mode-hook ()
  (font-lock-mode 1))

(defun jd:gdb-disassembly-mode-hook ()
  (font-lock-mode 1))

(defun jd:gdb-frames-mode-hook ()
  (font-lock-mode 1))

(defun jd:gdb-threads-mode-hook ()
  (font-lock-mode 1))

(defun jd:gdb-inferior-io-mode-hook ()
  (font-lock-mode 1))

(add-hook 'gdb-mode-hook 'jd:gdb-mode-hook)
(add-hook 'gdb-breakpoints-mode-hook 'jd:gdb-breakpoints-mode-hook)
(add-hook 'gdb-locals-mode-hook 'jd:gdb-locals-mode-hook)
(add-hook 'gdb-registers-mode-hook 'jd:gdb-registers-mode-hook)
(add-hook 'gdb-disassembly-mode-hook 'jd:gdb-disassembly-mode-hook)
(add-hook 'gdb-frames-mode-hook 'jd:gdb-frames-mode-hook)
(add-hook 'gdb-threads-mode-hook 'jd:gdb-threads-mode-hook)
(add-hook 'gdb-inferior-io-mode-hook 'jd:gdb-inferior-io-mode-hook)

(provide 'jd:gdb-mi-st)
