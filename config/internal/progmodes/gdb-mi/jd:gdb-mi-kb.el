(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-c>") 'gdb-io-interrupt)
(define-key gdb-inferior-io-mode-map (kbd "<C-c> <C-d>") 'gdb-io-eof)
(define-key gdb-inferior-io-mode-map (kbd "<jd:ret>") 'comint-send-input)

(jd:provide-feature jd:gdb-mi-kb)
