;; Swaps the most recent buffer with the current buffer.
;; `counsel-switch-buffer'
;; `ivy-next-line'
;; `ivy-alt-done'
(fset 'jd:macro-swap-buffers
      (kmacro-lambda-form [?\C-\M-f ?\M-k return] 0 "%d"))

(provide 'jd:global-macro-definitions)
