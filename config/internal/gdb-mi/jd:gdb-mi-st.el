(setq-default gud-gdb-command-name "gdb --quiet --interpreter=mi")
(setq-default gdb-many-windows t)
;; (setq-default gdb-show-main t)

(defun gdb (command-line)
  (interactive (list (gud-query-cmdline 'gdb)))
  (when (and gud-comint-buffer
             (buffer-name gud-comint-buffer)
             (get-buffer-process gud-comint-buffer)
             (with-current-buffer gud-comint-buffer (eq gud-minor-mode 'gdba)))
    (gdb-restore-windows)
    (error
     "Multiple debugging requires restarting in text command mode"))
  (gud-common-init command-line nil 'gud-gdbmi-marker-filter)
  (let ((proc (get-buffer-process gud-comint-buffer)))
    (add-function :around (process-filter proc) #'gdb--check-interpreter))
  (set (make-local-variable 'gud-minor-mode) 'gdbmi)
  (set (make-local-variable 'gdb-control-level) 0)
  (setq comint-input-sender 'gdb-send)
  (when (ring-empty-p comint-input-ring)
    (let ((hfile (expand-file-name ".gdb_history"))
	  (hsize (getenv "HISTSIZE")))
      (dolist (file (append '("~/.gdbinit")
			    (unless (string-equal (expand-file-name ".")
                                                  (expand-file-name "~"))
			      '(".gdbinit"))))
	(if (file-readable-p (setq file (expand-file-name file)))
	    (with-temp-buffer
	      (insert-file-contents file)
	      (while (re-search-forward
		      "^ *set history \\(filename\\|size\\)  *\\(.*\\)" nil t)
		(cond ((string-equal (match-string 1) "filename")
		       (setq hfile (expand-file-name
				    (match-string 2)
				    (file-name-directory file))))
		      ((string-equal (match-string 1) "size")
		       (setq hsize (match-string 2))))))))
      (and (stringp hsize)
	   (integerp (setq hsize (string-to-number hsize)))
	   (> hsize 0)
	   (set (make-local-variable 'comint-input-ring-size) hsize))
      (if (stringp hfile)
	  (set (make-local-variable 'comint-input-ring-file-name) hfile))
      (comint-read-input-ring t)))
  ;; (gud-def gud-tbreak "tbreak %f:%l" "\C-t"
  ;;          "Set temporary breakpoint at current line.")
  ;; (gud-def gud-jump
  ;;          (progn (gud-call "tbreak %f:%l" arg) (gud-call "jump %f:%l"))
  ;;          "\C-j" "Set execution address to current line.")
  ;; (gud-def gud-up     "up %p"     "<" "Up N stack frames (numeric arg).")
  ;; (gud-def gud-down   "down %p"   ">" "Down N stack frames (numeric arg).")
  ;; (gud-def gud-print  "print %e"  "\C-p" "Evaluate C expression at point.")
  ;; (gud-def gud-pstar  "print* %e" nil
  ;;          "Evaluate C dereferenced pointer expression at point.")
  ;; (gud-def gud-step   (gdb-gud-context-call "-exec-step" "%p" t)
  ;;          "\C-s"
  ;;          "Step one source line with display.")
  ;; (gud-def gud-stepi  (gdb-gud-context-call "-exec-step-instruction" "%p" t)
  ;;          "\C-i"
  ;;          "Step one instruction with display.")
  ;; (gud-def gud-next   (gdb-gud-context-call "-exec-next" "%p" t)
  ;;          "\C-n"
  ;;          "Step one line (skip functions).")
  ;; (gud-def gud-nexti  (gdb-gud-context-call "-exec-next-instruction" "%p" t)
  ;;          nil
  ;;          "Step one instruction (skip functions).")
  ;; (gud-def gud-cont   (gdb-gud-context-call "-exec-continue")
  ;;          "\C-r"
  ;;          "Continue with display.")
  ;; (gud-def gud-finish (gdb-gud-context-call "-exec-finish" nil t)
  ;;          "\C-f"
  ;;          "Finish executing current function.")
  ;; (gud-def gud-run    "-exec-run"
  ;;          nil
  ;;          "Run the program.")
  ;; (gud-def gud-break (if (not (string-match "Disassembly" mode-name))
  ;;       		 (gud-call "break %f:%l" arg)
  ;;       	       (save-excursion
  ;;       		 (beginning-of-line)
  ;;       		 (forward-char 2)
  ;;       		 (gud-call "break *%a" arg)))
  ;;          "\C-b" "Set breakpoint at current line or address.")
  ;; (gud-def gud-remove (if (not (string-match "Disassembly" mode-name))
  ;;       		  (gud-call "clear %f:%l" arg)
  ;;       		(save-excursion
  ;;       		  (beginning-of-line)
  ;;       		  (forward-char 2)
  ;;       		  (gud-call "clear *%a" arg)))
  ;;          "\C-d" "Remove breakpoint at current line or address.")
  ;; (gud-def gud-until  (if (not (string-match "Disassembly" mode-name))
  ;;       		  (gud-call "-exec-until %f:%l" arg)
  ;;       		(save-excursion
  ;;       		  (beginning-of-line)
  ;;       		  (forward-char 2)
  ;;       		  (gud-call "-exec-until *%a" arg)))
  ;;          "\C-u" "Continue to current line or address.")
  ;; (gud-def
  ;;  gud-go (gud-call (if gdb-active-process
  ;;                       (gdb-gud-context-command "-exec-continue")
  ;;                     "-exec-run") arg)
  ;;  nil "Start or continue execution.")
  ;; (gud-def gud-pp
  ;;          (gud-call
  ;;           (concat
  ;;            "pp " (if (eq (buffer-local-value
  ;;       		    'major-mode (window-buffer)) 'speedbar-mode)
  ;;       	       (gdb-find-watch-expression) "%e")) arg)
  ;;          nil   "Print the Emacs s-expression.")
  (define-key gud-minor-mode-map [left-margin mouse-1]        'gdb-mouse-set-clear-breakpoint)
  (define-key gud-minor-mode-map [left-fringe mouse-1]        'gdb-mouse-set-clear-breakpoint)
  (define-key gud-minor-mode-map [left-margin C-mouse-1]      'gdb-mouse-toggle-breakpoint-margin)
  (define-key gud-minor-mode-map [left-fringe C-mouse-1]      'gdb-mouse-toggle-breakpoint-fringe)
  (define-key gud-minor-mode-map [left-margin drag-mouse-1]   'gdb-mouse-until)
  (define-key gud-minor-mode-map [left-fringe drag-mouse-1]   'gdb-mouse-until)
  (define-key gud-minor-mode-map [left-margin mouse-3]        'gdb-mouse-until)
  (define-key gud-minor-mode-map [left-fringe mouse-3]        'gdb-mouse-until)
  (define-key gud-minor-mode-map [left-margin C-drag-mouse-1] 'gdb-mouse-jump)
  (define-key gud-minor-mode-map [left-fringe C-drag-mouse-1] 'gdb-mouse-jump)
  (define-key gud-minor-mode-map [left-fringe C-mouse-3]      'gdb-mouse-jump)
  (define-key gud-minor-mode-map [left-margin C-mouse-3]      'gdb-mouse-jump)
  
  (set (make-local-variable 'gud-gdb-completion-function) 'gud-gdbmi-completions)
  (add-hook 'completion-at-point-functions #'gud-gdb-completion-at-point nil 'local)
  (local-set-key "\C-i" 'completion-at-point)
  (local-set-key [remap comint-delchar-or-maybe-eof] 'gdb-delchar-or-quit)
  (setq gdb-first-prompt t)
  (setq gud-running nil)
  (gdb-update)
  (run-hooks 'gdb-mode-hook))

;; (defun jd:gdb-restore-windows ()
;;   (interactive)
;;   (switch-to-buffer gud-comint-buffer)
;;   (delete-other-windows)
;;   (if gdb-many-windows
;;       (gdb-setup-windows)
;;     (when (or gud-last-last-frame gdb-show-main)
;;       (let ((win (split-window)))
;;         (set-window-buffer
;;          win
;;          (if gud-last-last-frame
;;              (gud-find-file (car gud-last-last-frame))
;;            (gud-find-file gdb-main-file)))
;;         (setq gdb-source-window win)))))

;; (advice-add 'gdb-restore-windows :override 'jd:gdb-restore-windows)

;; (advice-add 'gdb :after
;;             (lambda (&rest _)
;;               (delete-other-windows)
;;               (let ((win0 (get-buffer-window))
;;                     (win1 (split-window-below)))
;;                 (if (gbd-main-file)
;;                     (progn
;;                       (select-window win0)
;;                       (display-buffer gdb-main-file)
;;                       (select-window win1)
;;                       (display-buffer (get-gud-buffer)))
;;                   (progn
;;                     (delete-window win0)
;;                     (select-window win1)
;;                     (display-buffer (get-gud-buffer))
;;                     (split-window))))))

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
