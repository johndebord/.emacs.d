(setf (cdr gdb-inferior-io-mode-map) nil)
(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-c>") 'gdb-io-interrupt)
(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-d>") 'gdb-io-eof)
(define-key gdb-inferior-io-mode-map (kbd "<jd:ret>") 'comint-send-input)

(provide 'jd:gdb-mi-kb)

;; gdb-breakpoints-mode-map
;; gdb-frames-mode-map
;; gdb-locals-mode-map
;; gdb-registers-mode-map
;; gdb-threads-mode-map
;; gdb-memory-unit-menu
;; gdb-memory-mode-map
;; gdb-edit-locals-map-1
;; gdb-locals-watch-map
;; gdb-memory-format-menu
;; gdb-memory-unit-map
;; gdb-disassembly-mode-map
;; gdb-memory-format-map
