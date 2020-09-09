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
          (window-buffer (funcall ',display-function)) nil 'force-same-window))))))

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

(add-hook 'gdb-mode-hook 'jd:gdb-mode-hook)

(jd:provide-feature jd:gdb-mi-st)
