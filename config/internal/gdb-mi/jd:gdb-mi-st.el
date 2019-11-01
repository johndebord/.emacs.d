(setq-default gud-gdb-command-name "gdb --quiet --interpreter=mi")
(setq-default gdb-many-windows t)
(setq-default gdb-show-main nil)

;;;; Window management
(defun jd:gdb-display-buffer (buf)
  "Show buffer BUF, and make that window dedicated."
  (let ((window (display-buffer buf)))
    window))

(advice-add 'gdb-display-buffer :override 'jd:gdb-display-buffer)

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

;; (defconst jd:gdb-comint-header
;;   (list
;;    ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil nil                 mode-line)          " "
;;    (gdb-propertize-header "Breakpoints" gdb-breakpoints-buffer   nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "Locals"      gdb-locals-buffer        nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "Registers"   gdb-registers-buffer     nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "Stack"       gdb-stack-buffer         nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "Threads"     gdb-threads-buffer       nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "Disassembly" gdb-disassembly-buffer   nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "Memory"      gdb-memory-buffer-buffer nil mode-line-highlight mode-line-inactive) " "
;;    (gdb-propertize-header "Inferior IO" gdb-inferior-io          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-breakpoints-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil nil                 mode-line)          " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Inferior IO" (gdb-inferior-io-name)          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-locals-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil nil                 mode-line)          " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Inferior IO" (gdb-inferior-io-name)          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-registers-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil nil                 mode-line)          " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Inferior IO" (gdb-inferior-io-name)          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-stack-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil nil                 mode-line)          " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Inferior IO" (gdb-inferior-io-name)          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-threads-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil nil                 mode-line)          " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Inferior IO" (gdb-inferior-io-name)          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-disassembly-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil nil                 mode-line)          " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Inferior IO" gdb-inferior-io          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-memory-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil nil                 mode-line)          " "
   (gdb-propertize-header "Inferior IO" (gdb-inferior-io-name)          nil mode-line-highlight mode-line-inactive)))

(defconst jd:gdb-io-header
  (list
   ;; (gdb-propertize-header "GDB"         gdb-comint-buffer        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Breakpoints" (gdb-breakpoints-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Locals"      (gdb-locals-buffer-name)        nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Registers"   (gdb-registers-buffer-name)     nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Stack"       (gdb-stack-buffer-name)         nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Threads"     (gdb-threads-buffer-name)       nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Disassembly" (gdb-disassembly-buffer-name)   nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Memory"      (gdb-memory-buffer-buffer-name) nil mode-line-highlight mode-line-inactive) " "
   (gdb-propertize-header "Inferior IO" (gdb-inferior-io-name)          nil nil                 mode-line)))

;; NOTES:
;; (gdb-init-1) is called from (gdb-update)
;; (gdb-get-buffer-create 'gdb-inferior-io) is called from (gdb-init-1)
;; (gdb-get-buffer-create 'gdb-threads-buffer) and (gdb-get-buffer-create 'gdb-breakpoints-buffer)
;; get executed in (gdb-update)
;; (gdb-get-buffer-create 'gdb-locals-buffer) and
;; (gdb-get-buffer-create 'gdb-stack-buffer)  and
;; (gdb-get-buffer-create 'gdb-breakpoints-buffer)
;; get executed in (gdb-setup-windows)
;;
;; (gdb-display-buffer-other-frame-action) is the function that displays the other thread
;;
;; IO has a few useful functions: (gdb-io-interrupt) (gdb-io-quit) (gdb-io-stop) (gdb-io-eof)
;;
;; the variables gdb-thread-number shoudl be passed as the thread argument
;; it's the thread number of the main thread
;;
;; I have an idea to prevent popup-frames; replace the frame popup symbol with a goto buffer like symbol?

;; (defun jd:setup ()
;;   (message "IIIIIIIIIIIIIHHHHHHHHHHHHHHHHHHHH")
;;   (delete-other-windows)
;;   (let ((win0 (selected-window))
;;         (win1 (split-window)))
;;     (set-window-buffer win0 gud-comint-buffer)
;;     (set-window-buffer win1 (gud-find-file gdb-main-file))
;;     (select-window win1)
;;     (setq gdb-source-window (selected-window))
;;     (select-window win0)))

;; (add-hook 'gdb-mode-hook 'jd:setup)



;; (advice-add 'gdb-setup-windows :override 'jd:gdb-setup-windows)

;; (add-hook 'gud-gdb-mode-hook
;;           (lambda ()
;;             (message "HIIIIIIIIIIIIIIIII")))


;; gud-kill-buffer-hook
;; gud-gdb-mode-hook

(defun jd:gdb-setup-windows ()
  (gdb-get-buffer-create 'gdb-breakpoints-buffer)
  (gdb-get-buffer-create 'gdb-locals-buffer)
  (gdb-get-buffer-create 'gdb-registers-buffer)
  (gdb-get-buffer-create 'gdb-stack-buffer)
  (gdb-get-buffer-create 'gdb-threads-buffer)
  (gdb-get-buffer-create 'gdb-disassembly-buffer)
  (gdb-get-buffer-create 'gdb-memory-buffer)
  (gdb-get-buffer-create 'gdb-inferior-io)
  ;; (with-current-buffer (gud-comint-buffer)
  ;;   (setq-local header-line-format 'jd:gdb-comint-header))
  (with-current-buffer (gdb-breakpoints-buffer-name)
    (setq-local header-line-format 'jd:gdb-breakpoints-header))
  (with-current-buffer (gdb-locals-buffer-name)
    (setq-local header-line-format 'jd:gdb-locals-header))
  (with-current-buffer (gdb-registers-buffer-name)
    (setq-local header-line-format 'jd:gdb-registers-header))
  (with-current-buffer (gdb-stack-buffer-name)
    (setq-local header-line-format 'jd:gdb-stack-header))
  (with-current-buffer (gdb-threads-buffer-name)
    (setq-local header-line-format 'jd:gdb-threads-header))
  (with-current-buffer (gdb-disassembly-buffer-name)
    (setq-local header-line-format 'jd:gdb-disassembly-header))
  (with-current-buffer (gdb-memory-buffer-name)
    (setq-local header-line-format 'jd:gdb-memory-header))
  (with-current-buffer (gdb-inferior-io-name)
    (setq-local header-line-format 'jd:gdb-io-header))
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

(advice-add 'gdb-setup-windows :override 'jd:gdb-setup-windows)

(provide 'jd:gdb-mi-st.el)
