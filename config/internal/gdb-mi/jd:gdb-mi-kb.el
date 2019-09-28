(setf (cdr gdb-breakpoints-mode-map) nil)
(define-key gdb-breakpoints-mode-map (kbd "<jd:bks>") 'gdb-delete-breakpoint)
(define-key gdb-breakpoints-mode-map (kbd "<jd:ret>") 'gdb-goto-breakpoint)
(define-key gdb-breakpoints-mode-map (kbd "<jd:spc>") 'gdb-toggle-breakpoint)

(setf (cdr gdb-frames-mode-map) nil)
(define-key gdb-frames-mode-map (kbd "<jd:ret>") 'gdb-select-frame)

(setf (cdr gdb-inferior-io-mode-map) nil)
(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-c>") 'gdb-io-interrupt)
(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-d>") 'gdb-io-eof)
(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-z>") 'gdb-io-stop)
(define-key gdb-inferior-io-mode-map (kbd "<jd:ret>") 'comint-send-input)
(define-key gdb-inferior-io-mode-map (kbd "<jd:tab>") 'comint-next-prompt)
(define-key gdb-inferior-io-mode-map (kbd "<jd:S-ret>") 'comint-accumulate)
(define-key gdb-inferior-io-mode-map (kbd "<jd:S-tab>") 'comint-previous-prompt)

(setf (cdr gdb-locals-mode-map) nil)
(define-key gdb-locals-mode-map (kbd "<jd:ret>") 'gdb-edit-locals-value)

(setf (cdr gdb-registers-mode-map) nil)
(define-key gdb-registers-mode-map (kbd "<jd:ret>") 'gdb-edit-register-value)

(setf (cdr gdb-threads-mode-map) nil)
(define-key gdb-threads-mode-map (kbd "<jd:ret>") 'gdb-select-thread)

(provide 'jd:gdb-mi-kb.el)

;; gdb-memory-unit-menu
;; gdb-memory-mode-map
;; gdb-edit-locals-map-1
;; gdb-locals-watch-map
;; gdb-memory-format-menu
;; gdb-memory-unit-map
;; gdb-disassembly-mode-map
;; gdb-memory-format-map
